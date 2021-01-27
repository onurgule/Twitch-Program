from twitch import TwitchClient
client = TwitchClient(client_id='CLIENT_ID')
users = client.users.translate_usernames_to_ids(['videoyun', 'jahrein', 'wtcn', 'pqueen', 'elraenn', 'zade', 'kendinemuzisyen', 'berkozdemir', 'zeon', 'unlostv', 'uthenera','legatusleman'])
for user in users:
    print('{}: {}'.format(user.name, user.id))