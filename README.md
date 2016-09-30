# Express-use-dockerfile

> This is a example of using Dockerfile to build docker image 
> and build a express server in a containor

# To use dockerfile

```js
$ express --ejs
$ //copy this Dockerfile to the express folder
$
$ docker login
$ docker build -t peter-node-web/node-web-app .
$ docker images
$ //peter-node-web/node-web-app will be showed amoung the images
$
$ docker run -p 49160:8080 peter-node-web/node-web-app


```


