# Proxy
https://github.com/dmikushin/openfortivpn-docker?ysclid=lsms1sr8gj814891896
https://github.com/lripo/docker-openfortivpn?ysclid=lsms21i8z8666007424

# Haproxy

https://github.com/jeffre/openfortivpn-haproxy#running-on-macos
https://giters.com/andreipoe/openfortivpn-docker?ysclid=lsms1urc9d672551220



# No PPP


I don't know what Google Colab provides (virtual machines?) and I don't know what you mean by “this doesn't work”. All I can say is that openfortivpn currently requires PPP kernel support. If you are certain the problem is the lack of PPP kernel support, you need to find a platform with PPP kernel support to run openfortivpn. If you are not certain that is the problem, open a new ticket and provide logs.

You may also have a look at OpenConnect, which does not require pppd or PPP kernel support.
