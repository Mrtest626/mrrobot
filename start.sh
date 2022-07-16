if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mrtest626/mrrobot.git /mrrobot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mrrobot
fi
cd /mrrobot
pip3 install -U -r requirements.txt
echo "Starting mrrobot....🔥"
python3 bot.py
