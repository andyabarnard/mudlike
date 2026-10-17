-- Definition seeds: only applied when the SQLite rooms table is empty.
INSERT INTO rooms VALUES ('town1','Towny Town','This is a Playstation black disc. I mean a town.','backgrounds/towntest.png');
INSERT INTO rooms VALUES ('forest1','Foresty Forest','INTO THE DARK. BLACK. FOREST.','backgrounds/foresttest.png');
INSERT INTO exits VALUES ('town1','north','forest1');
INSERT INTO exits VALUES ('forest1','south','town1');
INSERT INTO entity_templates VALUES ('player','Frostilicus','It''s you!','entity_icons/evil.png',1,25,120,100,100,'neutral');
INSERT INTO entity_templates VALUES ('goblinger','Goblinger','He''s got what you need.','entity_icons/goblin_test.png',0,10,180,50,100,'fight');
INSERT INTO item_templates VALUES ('test_sword','Test Sword','item_icons/test_sword.png','weaponMelee');
INSERT INTO item_templates VALUES ('test_potion','Test Potion','item_icons/test_pot.png','consumable');
INSERT INTO entity_spawns VALUES (1,'player','town1');
INSERT INTO entity_spawns VALUES (2,'goblinger','forest1');
INSERT INTO item_spawns VALUES (1,'test_sword','town1');
INSERT INTO item_spawns VALUES (2,'test_potion','forest1');
