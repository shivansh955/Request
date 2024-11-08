if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/shivansh955/Request /Request
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Request
fi
cd /Request
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
