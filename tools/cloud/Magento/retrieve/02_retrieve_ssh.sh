
CLOUD_PROJECT_ID=XXXXXXXXXX
CLOUD_SSH_USER=ssh@magentocloud.com
CLOUD_SSH_USER_STAGING=ssh@magentocloud.com
CLOUD_DIR_PRODUCTION=/path/production
CLOUD_DIR_STAGING=/path/staging

ssh \
    -AR \
    localhost:50000:$CLOUD_SSH_USER:22 \
    $CLOUD_SSH_USER \
    "rsync -e 'ssh -p 50000' -vuar ${CLOUD_DIR_PRODUCTION} ${CLOUD_SSH_USER_STAGING}:$CLOUD_DIR_STAGING"

ssh-add env/magento_cloud_rsa
ssh -A git@bitbucket.org

ssh \
    -AR \
    localhost:50000:$CLOUD_SSH_USER:22 \
    $CLOUD_SSH_USER \
    "rsync -e 'ssh -p 50000' --exclude 'cache' --exclude 'tmp' -vuar /var/www/prod/${CLOUD_PROJECT_ID}/site/pub/media/ r.steckles@localhost:/var/www/${CLOUD_PROJECT_ID}/site/pub/media/"
