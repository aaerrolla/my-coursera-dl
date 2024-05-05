#### my-coursera-dl

coursera-dl fixed error : coursera.cookies.AuthenticationFailed: Cannot login on coursera.org: 400 Client Error: Bad Request for url: https://api.coursera.org/api/login/v3


#### building docker image 

clone this repo



```
cd my-coursera-dl

docker build -t courseradl:v1 .
```

#### running and downloading course 

create a folder in host m/c  to download courses  e.g 

```
mkdir /my-courses
```
change directory to  /my-courses

```
cd /my-courses
```
create coursera-dl.conf file   and place it  /my-courses  folder 

e.g coursera-dl.conf file 

```
--username <coursera username>
--password <coursera password>
--subtitle-language en
--download-quizzes
--cauth <copy cauth string from the browser  coursera login session >
```

download course   https://www.coursera.org/learn/uol-machine-learning-for-all/home/welcome

```
cd /my-courses
docker run --name coursera --rm  -v $(pwd):/courses coursedl:v1 uol-machine-learning-for-all 
```
