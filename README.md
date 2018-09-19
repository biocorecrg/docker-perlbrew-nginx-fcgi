# docker-perlbrew-nginx-fcgi

Docker image for hosting Perl-based CGI websites using NGINX, spawn-fcgi and fcgiwrap.

You need only to keep scripts in /cgi-bin directory. Only there and *pl and *cgi files will be executed.

Do not forget to adjust the permissions of your volumes.


* Build:

      docker build -t biocorecrg/perlbrew-nginx-fcgi .

* Run:

      docker run -d -p 20001:80 -v /home/toniher/tmp/cgicont/htdocs:/htdocs -v /home/toniher/tmp/cgicont/logs:/logs -v /home/toniher/tmp/cgicont/cgi-bin:/cgi-bin biocorecrg/perlbrew-nginx-fcgi

