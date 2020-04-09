require ["vnd.dovecot.pipe", "copy", "imapsieve", "environment", "variables"];

if environment :matches "imap.mailbox" "*" {
  set "mailbox" "${1}";
}

if string "${mailbox}" "trash" {
  stop;
}

if environment :matches "imap.user" "*" {
  set "username" "${1}";
}

pipe :copy "rspamc-learn-ham.sh" [ "${username}" ];
