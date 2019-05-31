DROP TABLE IF EXISTS Heroes;
CREATE TABLE Heroes(
  id              INTEGER       NOT NULL PRIMARY KEY,
  shortname       VARCHAR(30)   NOT NULL,
  localized_name  VARCHAR(30)   NOT NULL,
  primary_attr    VARCHAR(3)    NOT NULL,
  carry           TINYINT(1)    NOT NULL,
  nuker           TINYINT(1)    NOT NULL,
  initiator       TINYINT(1)    NOT NULL,
  disabler        TINYINT(1)    NOT NULL,
  durable         TINYINT(1)    NOT NULL,
  escape          TINYINT(1)    NOT NULL,
  support         TINYINT(1)    NOT NULL,
  pusher          TINYINT(1)    NOT NULL,
  jungler         TINYINT(1)    NOT NULL
);

INSERT INTO Heroes VALUES (25, 'lina', 'Lina', 'int', 1, 1, 0, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (26, 'lion', 'Lion', 'int', 0, 1, 1, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (27, 'shadow_shaman', 'Shadow Shaman', 'int', 0, 1, 1, 1, 0, 0, 1, 1, 0);
INSERT INTO Heroes VALUES (20, 'vengefulspirit', 'Vengeful Spirit', 'agi', 0, 1, 1, 1, 0, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (21, 'windrunner', 'Windranger', 'int', 1, 1, 0, 1, 0, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (22, 'zuus', 'Zeus', 'int', 0, 1, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (23, 'kunkka', 'Kunkka', 'str', 1, 1, 1, 1, 1, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (28, 'slardar', 'Slardar', 'str', 1, 0, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (29, 'tidehunter', 'Tidehunter', 'str', 0, 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (4, 'bloodseeker', 'Bloodseeker', 'agi', 1, 1, 1, 1, 0, 0, 0, 0, 1);
INSERT INTO Heroes VALUES (8, 'juggernaut', 'Juggernaut', 'agi', 1, 0, 0, 0, 0, 1, 0, 1, 0);
INSERT INTO Heroes VALUES (119, 'dark_willow', 'Dark Willow', 'int', 0, 1, 0, 1, 0, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (120, 'pangolier', 'Pangolier', 'agi', 1, 1, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (121, 'grimstroke', 'Grimstroke', 'int', 0, 1, 0, 1, 0, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (129, 'mars', 'Mars', 'str', 1, 0, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (59, 'huskar', 'Huskar', 'str', 1, 0, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (58, 'enchantress', 'Enchantress', 'int', 0, 0, 0, 1, 1, 0, 1, 1, 1);
INSERT INTO Heroes VALUES (55, 'dark_seer', 'Dark Seer', 'int', 0, 0, 1, 1, 0, 1, 0, 0, 1);
INSERT INTO Heroes VALUES (54, 'life_stealer', 'Lifestealer', 'str', 1, 0, 0, 1, 1, 1, 0, 0, 1);
INSERT INTO Heroes VALUES (57, 'omniknight', 'Omniknight', 'str', 0, 1, 0, 0, 1, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (56, 'clinkz', 'Clinkz', 'agi', 1, 0, 0, 0, 0, 1, 0, 1, 0);
INSERT INTO Heroes VALUES (51, 'rattletrap', 'Clockwerk', 'str', 0, 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (50, 'dazzle', 'Dazzle', 'int', 0, 1, 0, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (53, 'furion', 'Nature\'s Prophet', 'int', 1, 1, 0, 0, 0, 1, 0, 1, 1);
INSERT INTO Heroes VALUES (52, 'leshrac', 'Leshrac', 'int', 1, 1, 0, 1, 0, 0, 1, 1, 0);
INSERT INTO Heroes VALUES (114, 'monkey_king', 'Monkey King', 'agi', 1, 0, 1, 1, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (88, 'nyx_assassin', 'Nyx Assassin', 'agi', 0, 1, 1, 1, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (89, 'naga_siren', 'Naga Siren', 'agi', 1, 0, 1, 1, 0, 1, 1, 1, 0);
INSERT INTO Heroes VALUES (111, 'oracle', 'Oracle', 'int', 0, 1, 0, 1, 0, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (110, 'phoenix', 'Phoenix', 'str', 0, 1, 1, 1, 0, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (113, 'arc_warden', 'Arc Warden', 'agi', 1, 1, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (112, 'winter_wyvern', 'Winter Wyvern', 'int', 0, 1, 0, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (82, 'meepo', 'Meepo', 'agi', 1, 1, 1, 1, 0, 1, 0, 1, 0);
INSERT INTO Heroes VALUES (83, 'treant', 'Treant Protector', 'str', 0, 0, 1, 1, 1, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (80, 'lone_druid', 'Lone Druid', 'agi', 1, 0, 0, 0, 1, 0, 0, 1, 1);
INSERT INTO Heroes VALUES (81, 'chaos_knight', 'Chaos Knight', 'str', 1, 0, 1, 1, 1, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (86, 'rubick', 'Rubick', 'int', 0, 1, 0, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (87, 'disruptor', 'Disruptor', 'int', 0, 1, 1, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (84, 'ogre_magi', 'Ogre Magi', 'int', 0, 1, 1, 1, 1, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (85, 'undying', 'Undying', 'str', 0, 1, 0, 1, 1, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (3, 'bane', 'Bane', 'int', 0, 1, 0, 1, 1, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (7, 'earthshaker', 'Earthshaker', 'str', 0, 1, 1, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (108, 'abyssal_underlord', 'Underlord', 'str', 0, 1, 0, 1, 1, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (109, 'terrorblade', 'Terrorblade', 'agi', 1, 1, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (102, 'abaddon', 'Abaddon', 'str', 1, 0, 0, 0, 1, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (103, 'elder_titan', 'Elder Titan', 'str', 0, 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (100, 'tusk', 'Tusk', 'str', 0, 1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (101, 'skywrath_mage', 'Skywrath Mage', 'int', 0, 1, 0, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (106, 'ember_spirit', 'Ember Spirit', 'agi', 1, 1, 1, 1, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (107, 'earth_spirit', 'Earth Spirit', 'str', 0, 1, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (104, 'legion_commander', 'Legion Commander', 'str', 1, 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (105, 'techies', 'Techies', 'int', 0, 1, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (39, 'queenofpain', 'Queen of Pain', 'int', 1, 1, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (38, 'beastmaster', 'Beastmaster', 'str', 0, 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (33, 'enigma', 'Enigma', 'int', 0, 0, 1, 1, 0, 0, 0, 1, 1);
INSERT INTO Heroes VALUES (32, 'riki', 'Riki', 'agi', 1, 0, 0, 1, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (31, 'lich', 'Lich', 'int', 0, 1, 0, 0, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (30, 'witch_doctor', 'Witch Doctor', 'int', 0, 1, 0, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (37, 'warlock', 'Warlock', 'int', 0, 0, 1, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (36, 'necrolyte', 'Necrophos', 'int', 1, 1, 0, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (35, 'sniper', 'Sniper', 'agi', 1, 1, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (34, 'tinker', 'Tinker', 'int', 1, 1, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (60, 'night_stalker', 'Night Stalker', 'str', 1, 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (61, 'broodmother', 'Broodmother', 'agi', 1, 1, 0, 0, 0, 1, 0, 1, 0);
INSERT INTO Heroes VALUES (62, 'bounty_hunter', 'Bounty Hunter', 'agi', 0, 1, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (63, 'weaver', 'Weaver', 'agi', 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (64, 'jakiro', 'Jakiro', 'int', 0, 1, 0, 1, 0, 0, 1, 1, 0);
INSERT INTO Heroes VALUES (65, 'batrider', 'Batrider', 'int', 0, 0, 1, 1, 0, 1, 0, 0, 1);
INSERT INTO Heroes VALUES (66, 'chen', 'Chen', 'int', 0, 0, 0, 0, 0, 0, 1, 1, 1);
INSERT INTO Heroes VALUES (67, 'spectre', 'Spectre', 'agi', 1, 0, 0, 0, 1, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (68, 'ancient_apparition', 'Ancient Apparition', 'int', 0, 1, 0, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (69, 'doom_bringer', 'Doom', 'str', 1, 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (2, 'axe', 'Axe', 'str', 0, 0, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO Heroes VALUES (6, 'drow_ranger', 'Drow Ranger', 'agi', 1, 0, 0, 1, 0, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (99, 'bristleback', 'Bristleback', 'str', 1, 1, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (98, 'shredder', 'Timbersaw', 'str', 0, 1, 0, 0, 1, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (91, 'wisp', 'Io', 'str', 0, 1, 0, 0, 0, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (90, 'keeper_of_the_light', 'Keeper of the Light', 'int', 0, 1, 0, 1, 0, 0, 1, 0, 1);
INSERT INTO Heroes VALUES (93, 'slark', 'Slark', 'agi', 1, 1, 0, 1, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (92, 'visage', 'Visage', 'int', 0, 1, 0, 1, 1, 0, 1, 1, 0);
INSERT INTO Heroes VALUES (95, 'troll_warlord', 'Troll Warlord', 'agi', 1, 0, 0, 1, 1, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (94, 'medusa', 'Medusa', 'agi', 1, 0, 0, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (97, 'magnataur', 'Magnus', 'str', 0, 1, 1, 1, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (96, 'centaur', 'Centaur Warrunner', 'str', 0, 1, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (11, 'nevermore', 'Shadow Fiend', 'agi', 1, 1, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (10, 'morphling', 'Morphling', 'agi', 1, 1, 0, 1, 1, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (13, 'puck', 'Puck', 'int', 0, 1, 1, 1, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (12, 'phantom_lancer', 'Phantom Lancer', 'agi', 1, 1, 0, 0, 0, 1, 0, 1, 0);
INSERT INTO Heroes VALUES (15, 'razor', 'Razor', 'agi', 1, 1, 0, 0, 1, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (14, 'pudge', 'Pudge', 'str', 0, 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (17, 'storm_spirit', 'Storm Spirit', 'int', 1, 1, 1, 1, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (16, 'sand_king', 'Sand King', 'str', 0, 1, 1, 1, 0, 1, 1, 0, 1);
INSERT INTO Heroes VALUES (19, 'tiny', 'Tiny', 'str', 1, 1, 1, 1, 1, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (18, 'sven', 'Sven', 'str', 1, 1, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (48, 'luna', 'Luna', 'agi', 1, 1, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (49, 'dragon_knight', 'Dragon Knight', 'str', 1, 1, 1, 1, 1, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (46, 'templar_assassin', 'Templar Assassin', 'agi', 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (47, 'viper', 'Viper', 'agi', 1, 0, 1, 1, 1, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (44, 'phantom_assassin', 'Phantom Assassin', 'agi', 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (45, 'pugna', 'Pugna', 'int', 0, 1, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (42, 'skeleton_king', 'Wraith King', 'str', 1, 0, 1, 1, 1, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (43, 'death_prophet', 'Death Prophet', 'int', 1, 1, 0, 1, 0, 0, 0, 1, 0);
INSERT INTO Heroes VALUES (40, 'venomancer', 'Venomancer', 'agi', 0, 1, 1, 1, 0, 0, 1, 1, 0);
INSERT INTO Heroes VALUES (41, 'faceless_void', 'Faceless Void', 'agi', 1, 0, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (1, 'antimage', 'Anti-Mage', 'agi', 1, 1, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (5, 'crystal_maiden', 'Crystal Maiden', 'int', 0, 1, 0, 1, 0, 0, 1, 0, 1);
INSERT INTO Heroes VALUES (9, 'mirana', 'Mirana', 'agi', 1, 1, 0, 1, 0, 1, 1, 0, 0);
INSERT INTO Heroes VALUES (77, 'lycan', 'Lycan', 'str', 1, 0, 0, 0, 1, 1, 0, 1, 1);
INSERT INTO Heroes VALUES (76, 'obsidian_destroyer', 'Outworld Devourer', 'int', 1, 1, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (75, 'silencer', 'Silencer', 'int', 1, 1, 1, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (74, 'invoker', 'Invoker', 'int', 1, 1, 0, 1, 0, 1, 0, 1, 0);
INSERT INTO Heroes VALUES (73, 'alchemist', 'Alchemist', 'str', 1, 1, 1, 1, 1, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (72, 'gyrocopter', 'Gyrocopter', 'agi', 1, 1, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO Heroes VALUES (71, 'spirit_breaker', 'Spirit Breaker', 'str', 1, 0, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO Heroes VALUES (70, 'ursa', 'Ursa', 'agi', 1, 0, 0, 1, 1, 0, 0, 0, 1);
INSERT INTO Heroes VALUES (79, 'shadow_demon', 'Shadow Demon', 'int', 0, 1, 1, 1, 0, 0, 1, 0, 0);
INSERT INTO Heroes VALUES (78, 'brewmaster', 'Brewmaster', 'str', 1, 1, 1, 1, 1, 0, 0, 0, 0);
