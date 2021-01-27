from twitch import TwitchClient
import requests
r = requests.get('http://localhost/getStreamers.php');
streamers = r.json()
client = TwitchClient(client_id='CLIENT_ID')
for streamer in streamers:
    channel = client.streams.get_stream_by_user(streamer['TID'])
    if channel != None:
        print(streamer['Name'] + " is live!\n");
        requests.get('http://localhost/addAction.php?fsi='+streamer['SID']+'&fst='+channel.channel.status+'&fg='+channel.game+"&vwr="+str(channel.viewers)+"&fv="+str(channel.channel.views)+"&ffo="+str(channel.channel.followers)+"&fup="+str(channel.channel.updated_at));