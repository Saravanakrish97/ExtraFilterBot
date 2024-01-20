#if [ -z $UPSTREAM_REPO ]
#then
#  echo "Cloning main Repository"
#  git clone https://github.com/Saravanakrish97/ExtraFilterBot.git /ExtraFilterBot 
#else
#  echo "Cloning Custom Repo from $UPSTREAM_REPO "
#  git clone $UPSTREAM_REPO /ExtraFilterBot 
#fi
#cd /ExtraFilterBot 
#pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Saravanakrish97/ExtraFilterBot /ExtraFilterBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Saravanakrish97/ExtraFilterBot -b $BRANCH /ExtraFilterBot
fi
cd /ExtraFilterBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
