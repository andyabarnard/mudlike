
-- Definition seeds: applied when the SQLite rooms table is empty.

-- Rooms
INSERT INTO rooms (id, name, description, background_path)
VALUES
  ('town1', 'Towny Town',
   'This is a Playstation black disc. I mean a town.',
   'backgrounds/towntest.png'),
  ('forest1', 'Foresty Forest',
   'INTO THE DARK. BLACK. FOREST.',
   'backgrounds/foresttest.png');

-- Exits
INSERT INTO exits (room_id, direction, destination_id)
VALUES
  ('town1', 'north', 'forest1'),
  ('forest1', 'south', 'town1');

-- Entity definitions
INSERT INTO entity_templates (
  id,
  name,
  description,
  sprite_path,
  is_player,
  attack,
  speed,
  hp,
  mp,
  attack_reaction,
  chase_behavior,
  tenacity,
  cautiousness
) VALUES
  (
    'player',
    'Frostilicus',
    'It''s you!',
    'entity_icons/evil.png',
    1,
    25,
    120,
    100,
    100,
    'neutral',
    'stay',
    0,
    'low'
  ),
  (
    'goblinger',
    'Goblinger',
    'He''s got what you need.',
    'entity_icons/goblin_test.png',
    0,
    10,
    180,
    50,
    100,
    'fight',
    'chase',
    8,
    'low'
  );

-- Item definitions
INSERT INTO item_templates (id, name, sprite_path, type)
VALUES
  ('test_sword', 'Test Sword',
   'item_icons/test_sword.png', 'weaponMelee'),
  ('test_potion', 'Test Potion',
   'item_icons/test_pot.png', 'consumable');

-- Entity spawn locations
INSERT INTO entity_spawns (id, template_id, room_id)
VALUES
  (1, 'player', 'town1'),
  (2, 'goblinger', 'forest1');

-- Item spawn locations
INSERT INTO item_spawns (id, template_id, room_id)
VALUES
  (1, 'test_sword', 'town1'),
  (2, 'test_potion', 'forest1');
