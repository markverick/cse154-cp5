import json

role_key = {'carry': 0, 'nuker': 1, 'initiator': 2, 'disabler': 3, 'durable': 4, 'escape': 5, 'support': 6, 'pusher': 7, 'jungler': 8}
with open('heroes.json') as json_file:
    db = json.load(json_file)
    # print(db)
    for hero in db.itervalues():
        #INSERT INTO Heroes VALUES (0, 'antimage', 'Anti-Mage', 'agi', 1, 1, 0, 0, 0, 1, 0, 0, 0);
        h_roles = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        # print(hero['name'])
        for role in hero['roles']:
            h_roles[role_key[role]] = 1
        print("INSERT INTO Heroes VALUES ({}, '{}', '{}', '{}', {}, {}, {}, {}, {}, {}, {}, {}, {});".format(
            hero['id'],
            hero['name'][14:],
            hero['localized_name'].replace("\'", "\\'"),
            hero['primary_attr'],
            h_roles[0], h_roles[1], h_roles[2], h_roles[3], h_roles[4], h_roles[5], h_roles[6], h_roles[7], h_roles[8]
            ))
        
    
