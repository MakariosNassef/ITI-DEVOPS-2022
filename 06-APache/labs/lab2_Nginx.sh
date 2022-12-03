Nginx Lab 

***1-Install Nginx***
	on CentOS
	sudo yum install epel-release
	sudo yum update
	sudo yum install nginx

***2-Change the default file (index.html) to (yourName.html)***
server {
        listen       80;
        listen       [::]:80;
        server_name  _;
        root         /usr/share/nginx/html/;
        index makar.html;

        # Load configuration files for the default server block.
        include /etc/nginx/default.d/*.conf;

        error_page 404 /404.html;
        location = /404.html {
        }

        error_page 500 502 503 504 /50x.html;
        location = /50x.html {
        }
    }

***3-Make two html files, and change the configuration file to access the first file on port 81, and access the second file on port 82.***
server {
        listen       81;
        listen       [::]:81;
        server_name  _;
        root         /usr/share/nginx/html/;
        index page1.html;

        # Load configuration files for the default server block.
        include /etc/nginx/default.d/*.conf;

        error_page 404 /404.html;
        location = /404.html {
        }

        error_page 500 502 503 504 /50x.html;
        location = /50x.html {
        }
    }
 
server {
        listen       9091;
        listen       [::]:9091;
        server_name  _;
        root         /usr/share/nginx/html/;
        index page2.html;

        # Load configuration files for the default server block.
        include /etc/nginx/default.d/*.conf;

        error_page 404 /404.html;
        location = /404.html {
        }

        error_page 500 502 503 504 /50x.html;
        location = /50x.html {
        }
    }


***4-Tell me the main differences between Apache & Nginx***
	Apache 
		 In heavy web traffic, it cannot support multiple requests.
		 Less security
	       Complex configuration
		 
	Nginx  
		It can support multiple client requests with limited hardware resources.
		provides better security
		simpler configuration
