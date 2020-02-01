#!/bin/bash

log_echo () {
  echo "###################################################################### $1 "
}
log_echo; log_echo; log_echo;
HOME_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "Current home dir is: ${HOME_DIR}"
rm -rf ${HOME_DIR}/venv
python3 -m venv ${HOME_DIR}/venv
source ${HOME_DIR}/venv/bin/activate
pip install  -e flask_app/. 
rm -rf flask_app/flask_app/posts.db

log_echo; log_echo; log_echo;

python -c "from flask_app.app  import db; db.create_all()"
python -c "from flask_app.app import BlogPost, db; BlogPost.query.all(); \
 db.session.add(BlogPost(title='Blog Post 1', content='Content blogpost', author='Aaron')); \
 db.session.add(BlogPost(title='Blog Post 1', content='Content blogpost', author='Aaron')); \
 print(BlogPost.query.all());"