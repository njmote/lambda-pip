# Lambda PIP Install Helper

Trying to add pip installs to your AWS Lambda functions? Here's a simple tool to help.

## Instructions

1) Install Docker
2) Create DIR with your lambda_function.py file
3) Execute the following docker command. Update env variable with your pip install package(s). Update local folder location to DIR from step 2.
4) Upload generated zip file to AWS Lambda.
5) Enjoy :)

docker run -it -e pip="pymysql" -v //c/Users/your_local_dir/:/working --rm njmote/lambda-pip

tip: Seperate pip installs with spaces. ie. pip="pymysql ipykernel"