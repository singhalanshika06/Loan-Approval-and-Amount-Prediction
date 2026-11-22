source "$HOME/loan_env/bin/activate"1. python -m venv .venv

# uv venv --python 3.14.3

2. Activate

```
Macos / linux : source .venv/bin/activate
Windows : .venv\Scripts\activate.bat
```

3. python -m pip install -r requirements.txt
4. pip freeze > req.txt
5. Create model +eval + classification +api + streamlit + app
6. Create Docker FIle
7. Create Image

'''

"docker images" : Shows docker images 

"docker build  -t loan-approval-app ." : To build docker image

"docker run  -d -p 8501:8501  -p8000:8000 loan-approval-app" : -d means background  >> Run in background

docker rmi <image_id> : To remove a image with particular id

docker rm<container_id> : To remove a container with particular id 

docker stop <container_id>

docker logs<container_id> : To see the logs whenever -d is used 

'''
