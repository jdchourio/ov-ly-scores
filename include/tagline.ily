\version "2.18.2"

#(use-modules (ice-9 popen))
#(use-modules (ice-9 rdelim))

% Read a command, execute it as a shell command and return
% the command's result as a string
% NOTE: This function only reads the first line of the command
% and returns the whole result as one single string
% (in case of multiline results the caller has to split that)
#(define (strsystem_internal cmd)
   (let* ((port (open-input-pipe cmd))
          (str (read-delimited "" port)))
     (close-pipe port)
     (if (eof-object? str) "" str)))

#(define comml     (object->string (command-line)))
#(define loc       (+ (string-rindex comml #\space ) 2)) 
#(define commllen  (- (string-length comml) 2))
#(define filen     (substring comml loc commllen))

#(define relfilen (string-split 
		    (strsystem_internal 
		      (string-append 
			"readlink -f " 
			filen 
			"|sed \"s#`git rev-parse --show-toplevel`#https://github.com/overmersch/ov-ly-scores/tree/master#\""
			)
		      ) #\newline))

#(define basefilen (string-split 
		    (strsystem_internal 
		      (string-append 
			"basename " 
			filen 
			)
		      ) #\newline))

#(define shaone (string-split 
		    (strsystem_internal 
		      (string-append 
			"git rev-parse --short HEAD"
			)
		      ) #\newline))

#(define (gitIsClean) (eq? "" (strsystem_internal "git status --porcelain"))) 

#(define-markup-command (isClean layout props) ()
   (if (gitIsClean)
   (interpret-markup layout props
       #{ \markup "" #})
   (interpret-markup layout props
       #{ \markup \bold " (dirty) " #})))

gitTagline = \markup {
  \abs-fontsize #8 {
    \fill-line {
      \concat {
	\basefilen " - " 
	"lilypond " 
	#(lilypond-version)
        " - "
	\shaone
	\isClean
      }
    }
  }
}
