# docker-sopcast

A wrapper around Sopcast. Requires an external player, such as vlc, to watch streams.

### Example usage:

    docker build -t docker-sopcast .
    docker run -p 33333:33333 docker-sopcast <sopcast-url> 33333
    vlc http://localhost:33333/tv.asf
