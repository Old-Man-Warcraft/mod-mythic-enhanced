-- Harder Mythic+ progression pass:
-- - raises baseline HP and damage scaling across +2 to +20
-- - adds deterministic wildcard affixes at +10 and a second at +16
-- - keeps rewards intact while making high keys meaningfully more punishing

REPLACE INTO `mythic_plus_level`
    (`lvl`, `timelimit`, `random_affix_count`, `hp_mult`, `dmg_mult`)
VALUES
    (2, 60*45, 0, 1.40, 1.20),
    (3, 60*45, 0, 1.50, 1.25),
    (4, 60*45, 0, 1.61, 1.31),
    (5, 60*45, 0, 1.73, 1.38),
    (6, 60*45, 0, 1.87, 1.46),
    (7, 60*45, 0, 2.02, 1.55),
    (8, 60*45, 0, 2.19, 1.64),
    (9, 60*45, 0, 2.38, 1.74),
    (10, 60*40, 1, 2.58, 1.85),
    (11, 60*40, 1, 2.81, 1.97),
    (12, 60*40, 1, 3.06, 2.10),
    (13, 60*40, 1, 3.34, 2.24),
    (14, 60*40, 1, 3.65, 2.39),
    (15, 60*38, 1, 4.00, 2.55),
    (16, 60*38, 2, 4.38, 2.73),
    (17, 60*38, 2, 4.81, 2.92),
    (18, 60*38, 2, 5.28, 3.13),
    (19, 60*38, 2, 5.80, 3.35),
    (20, 60*35, 2, 6.35, 3.58);
