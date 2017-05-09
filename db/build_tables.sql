create table if not exists products (
    id SERIAL primary key,
    img VARCHAR(50),
    name TEXT,
price INTEGER,
    type TEXT,
    aroma TEXT,
    size TEXT, 
    brush_grade TEXT,
    detail TEXT ,
    features TEXT
);


create table if not exists users (
    user_id SERIAL primary key,
    name TEXT,
    email TEXT unique

);

create table if not exists orders (
  order_id SERIAL primary key,
  user_id INTEGER,
  completed_date TEXT,
  fulfilled TEXT
);

create table if not exists product_in_order (
  pio_id SERIAL primary key,
  order_id INTEGER,
  product_id INTEGER,
  qty INTEGER
);






-- //////////////////////////INSERT INTEGERO TABLE/////////////////////////////////////////

-- insert INTEGERo products (img, name,  price , type, aroma, size, brush_grade, detail, features)

-- values


-- ('./images/shaving-kits/image0.PNG' , 'Unscented Full Size Kit With Genuine Badger Brush', 
-- 95 ,
-- 'Shaving Kits',
-- 'Unscented',
-- 'Full Size',
-- 'Genuine Badger',   
--  'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Genuine Badger Shaving Brush.', 
--                     'Unscented Pre-Shave Oil 2 oz.
--                     Unscented Shaving Cream 5 oz.
--                     Genuine Badger Shaving Brush
--                     Unscented After-Shave Balm 3.3 oz'),


-- ('./images/shaving-kits/image1.PNG' , 'Sandalwood Full Size Kit With Genuine Badger Brush', 
-- 95 , 
-- 'Shaving Kits',
-- 'Sandalwood',   
-- 'Full Size',
-- 'Genuine Badger',
-- 'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Oil, Shaving Cream, a Shaving Brush, and our After-Shave Balm. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.' , 
--                     '(1) Sandalwood Pre-Shave Oil (2 oz)
--                     (1) Sandalwood Shaving Cream (5 oz)
--                     (1) Black Genuine Badger Shaving Brush
--                     (1) Sandalwood After-Shave Balm (3.3 oz)'),


-- ('./images/shaving-kits/image2.PNG' ,'Lavender Full Size Kit With Genuine Badger Brush',
-- 95 ,
-- 'Shaving Kits',
-- 'Lavender',
-- 'Full Size',  
-- 'Genuine Badger',  
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Genuine Badger Shaving Brush.',
--                     'Lavender Pre-Shave Oil 2 oz.
--                     Lavender Shaving Cream 5 oz.
--                     Genuine Badger Shaving Brush
--                     Lavender After-Shave Balm 3.3 oz'),


-- ('./images/shaving-kits/image3.PNG' ,'Ocean Kelp Full Size Kit With Genuine Badger Brush', 
-- 110,
-- 'Shaving Kits',
-- 'Ocean Kelp',
-- 'Full Size',
-- 'Genuine Badger',   
--   'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Gel, Shaving Cream, a Shaving Brush, and our After-Shave Lotion. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.',               
--                     '(1) Ocean Kelp Pre-Shave Oil (2 oz)
--                     (1) Ocean Kelp Shaving Cream (5 oz)
--                     (1) Black Pure Badger Shaving Brush
--                     (1) Ocean Kelp After-Shave Lotion(3.3 oz)'),


-- ('./images/shaving-kits/image4.PNG' ,'Lemon Full Size Kit With Genuine Badger Brush',
-- 95,
-- 'Shaving Kits',
-- 'Lemon',
-- 'Full Size',
-- 'Genuine Badger',   
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Genuine Badger Shaving Brush.',
--                     'Lemon Pre-Shave Oil 2 oz.
--                     Lemon Shaving Cream 5 oz.
--                     Genuine Badger Shaving Brush
--                     Lemon After-Shave Balm 3.3 oz'),

-- ('./images/shaving-kits/image5.PNG' ,'Unscented Full Size Kit with Pure Badger Brush',
-- 120,
-- 'Shaving Kits', 
-- 'Unscented',
-- 'Full Size',     
-- 'Pure Badger',
-- 'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Oil, Shaving Cream, a Shaving Brush, and our After-Shave Balm. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.',
--                    '(1) Unscented Pre-Shave Oil (2 oz)
--                    (1) Unscented Shaving Cream (5 oz)
--                    (1) Black Pure Badger Shaving Brush
--                    (1) Unscented After-Shave Balm (3.3 oz)'),


-- ('./images/shaving-kits/image6.PNG' ,'Sandalwood Full Size Kit with Pure Shaving Brush',
-- 120,
-- 'Shaving Kits',
-- 'Sandalwood',
-- 'Full Size',
-- 'Pure Badger',
-- 'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Oil, Shaving Cream, a Shaving Brush, and our After-Shave Balm. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.',
--                       '(1) Sandalwood Pre-Shave Oil (2 oz)
--                       (1) Sandalwood Shaving Cream (5 oz)
--                       (1) Black Pure Badger Shaving Brush
--                       (1) Sandalwood After-Shave Balm (3.3 oz)'),


-- ('./images/shaving-kits/image7.PNG' ,'Lavender Full Size Kit with Pure Shaving Brush',
-- 120,
-- 'Shaving Kits',
-- 'Lavender',   
-- 'Full Size',
-- 'Pure Badger',
-- 'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Oil, Shaving Cream, a Shaving Brush, and our After-Shave Balm. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.',
--                       '(1) Lavender Pre-Shave Oil (2 oz)
--                       (1) Lavender Shaving Cream (5 oz)
--                       (1) Black Pure Badger Shaving Brush
--                       (1) Lavender After-Shave Balm (3.3 oz)'),


-- ('./images/shaving-kits/image8.PNG' ,'Ocean Kelp Full Size Kit with Pure Shaving Brush',
-- 135,
-- 'Shaving Kits',
-- 'Ocean Kelp',   
-- 'Full Size',
-- 'Pure Badger',
-- 'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Oil, Shaving Cream, a Shaving Brush, and our After-Shave Balm. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.',
--                       '(1) Ocean Kelp Pre-Shave Oil (2 oz)
--                       (1) Ocean Kelp Shaving Cream (5 oz)
--                       (1) Black Pure Badger Shaving Brush
--                       (1) Ocean Kelp After-Shave Lotion(3.3 oz)'),


-- ('./images/shaving-kits/image9.PNG' ,'Unscented Mid-Size Kit',
-- 60,
-- 'Mid-Size',
-- 'Unscented',      
-- 'Mid-Size',
-- 'Genuine Badger',
-- 'The Mid-Size Kit offers the 4 Elements of the Perfect Shave in a smaller size, perfect for gifting and travel as it meets TSA guidelines. Along with the right shaving implement, you are ready to Prepare, Lather up!, Shave and Moisturize. The 4 Elements of The Perfect Shave® provides optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts.',
--                     'Badger Hair Shaving Brush
--                     Unscented Pre-Shave Oil Pump(1 fl. oz)
--                     Unscented Shaving Cream Pump(1.5 oz)
--                     Unscented After-Shave Balm Pump (1 fl. oz)'),


-- ('./images/shaving-kits/image10.PNG' ,'Sandalwood Mid-Size Kit', 
-- 60,
-- 'Mid-Size',
-- 'Sandalwood',
-- 'Mid-Size',
-- 'Genuine Badger',
-- 'The Mid-Size Kit offers the 4 Elements of the Perfect Shave in a smaller size, perfect for gifting and travel as it meets TSA guidelines. Along with the right shaving implement, you are ready to Prepare, Lather up!, Shave and Moisturize. The 4 Elements of The Perfect Shave® provides optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts.',
--                       'Badger Hair Shaving Brush
--                       Sandalwood Pre-Shave Oil (1 fl. oz)
--                       Sandalwood Shaving Cream Tube (1.5 oz)
--                       Sandalwood After-Shave Balm Tube (1 fl. oz)'),



-- ('./images/shaving-kits/image11.PNG' ,'Lavender Mid-Size Kit', 
-- 60,
-- 'Mid-Size',
-- 'Lavender',   
-- 'Mid-Size',
-- 'Genuine Badger',
-- 'The Mid-Size Kit offers the 4 Elements of the Perfect Shave in a smaller size, perfect for gifting and travel as it meets TSA guidelines. Along with the right shaving implement, you are ready to Prepare, Lather up!, Shave and Moisturize. The 4 Elements of The Perfect Shave® provides optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts.',
--                       'Badger Hair Shaving Brush
--                       Lavender Pre-Shave Oil (1 fl. oz)
--                       Lavender Shaving Cream Tube (1.5 oz)
--                       Lavender After-Shave Balm Tube (1 fl. oz)'),


-- ('./images/shaving-kits/image12.PNG' ,'Lemon Mid-Size Kit', 
-- 60,
-- 'Mid-Size',
-- 'Lemon',
-- 'Mid-Size', 
-- 'Genuine Badger',   
-- 'The Mid-Size Kit offers the 4 Elements of the Perfect Shave in a smaller size, perfect for gifting and travel as it meets TSA guidelines. Along with the right shaving implement, you are ready to Prepare, Lather up!, Shave and Moisturize. The 4 Elements of The Perfect Shave® provides optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts.',
--                     'Badger Hair Shaving Brush
--                     Lemon Pre-Shave Oil (1 fl. oz)
--                     Lemon Shaving Cream Tube (1.5 oz)
--                     Lemon After-Shave Balm Tube (1 fl. oz)'),


-- ('./images/shaving-kits/image13.PNG' ,'Unscented Starter Kit', 
-- 30,
-- 'Starter Kits',
-- 'Unscented',
-- 'Starter Kit',
-- 'Genuine Badger', 
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Starter Kit offers 1 week''s worth of essentials for a close and comfortable shave. Complete with Pre-Shave Oil (.5 fl. oz), Shaving Cream (1 oz), After-Shave Balm (.5 fl. oz), Trial Size Badger Shaving Brush.',
--                     'Pre-Shave Oil (.5 fl. oz)
--                     Shaving Cream (1 oz)
--                     After-Shave Balm (.5 fl. oz)
--                     Trial Size Badger Shaving Brush'),


-- ('./images/shaving-kits/image14.PNG' ,'Sandalwood Starter Kit', 
-- 30,
-- 'Starter Kits',
-- 'Sandalwood',   
-- 'Starter Kit',
-- 'Genuine Badger', 
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Starter Kit offers 1 week''s worth of essentials for a close and comfortable shave. Complete with Pre-Shave Oil (.5 fl. oz), Shaving Cream (1 oz), After-Shave Balm (.5 fl. oz), Trial Size Badger Shaving Brush.',
--                     'Pre-Shave Oil (.5 fl. oz)
--                     Shaving Cream (1 oz)
--                     After-Shave Balm (.5 fl. oz)
--                     Trial Size Badger Shaving Brush'),


-- ('./images/shaving-kits/image15.PNG' ,'Lavender Starter Kit', 
-- 30,
-- 'Starter Kits',
-- 'Lavender',   
-- 'Starter Kit',
-- 'Genuine Badger', 
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Lavender Starter Kit offers 1 week''s worth of essentials for a close and comfortable shave.',
--                     'Pre-Shave Oil (.5 fl. oz)
--                     Shaving Cream (1 oz)
--                     After-Shave Balm (.5 fl. oz)
--                     Trial Size Badger Shaving Brush'),


-- ('./images/shaving-kits/image16.PNG' ,'Lemon Starter Kit', 
-- 30,
-- 'Starter Kits',
-- 'Lemon',
-- 'Starter Kit',
-- 'Genuine Badger',     
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Lemon Starter Kit offers 1 week''s worth of essentials for a close and comfortable shave.',
--                     'Pre-Shave Oil (.5 fl. oz)
--                     Shaving Cream (1 oz)
--                     After-Shave Balm (.5 fl. oz)
--                     Trial Size Badger Shaving Brush'),


-- ('./images/shaving-kits/image17.PNG' ,'Unscented Full Size Kit with Fine Badger Brush', 
-- 175,
-- 'Shaving Kits',
-- 'Unscented', 
-- 'Full Size',
-- 'Fine', 
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Fine Badger Shaving Brush.',
--                   'Unscented Kelp Pre-Shave Oil 2 oz.
--                   Unscented Shaving Cream 5 oz.
--                   Silvertip Badger Shaving Brush
--                   Unscented After-Shave Balm 3.3 oz'),


-- ('./images/shaving-kits/image18.PNG' ,'Sandalwood Full Size Kit with Fine Shaving Brush', 
-- 175,
-- 'Shaving Kits',
-- 'Sandalwood',   
-- 'Full Size',
-- 'Fine', 
-- 'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Oil, Shaving Cream, a Shaving Brush, and our After-Shave Balm. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.',

--                   '(1) Sandalwood Pre-Shave Oil (2 oz)
--                   (1) Sandalwood Shaving Cream (5 oz)
--                   (1) Black Pure Badger Shaving Brush
--                   (1) Sandalwood After-Shave Balm (3.3 oz)'),


-- ('./images/shaving-kits/image19.PNG' ,'Lavender Full Size Kit with Fine Badger Brush',
-- 175,
-- 'Shaving Kits',
-- 'Lavender',   
-- 'Full Size',
-- 'Fine', 
-- 'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Oil, Shaving Cream, a Shaving Brush, and our After-Shave Balm. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.',


--                   '(1) Lavender Pre-Shave Oil (2 oz)
--                   (1) Lavender Shaving Cream (5 oz)
--                   (1) Black Pure Badger Shaving Brush
--                   (1) Lavender After-Shave Balm (3.3 oz)'),


-- ('./images/shaving-kits/image20.PNG' ,'Ocean Kelp Full Size Kit with Fine Badger Brush',
-- 190,
-- 'Shaving Kits',
-- 'Ocean Kelp',
-- 'Full Size',
-- 'Fine',  
-- 'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Gel, Shaving Cream, a Shaving Brush, and our After-Shave Lotion. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.',
--                     '(1) Ocean Kelp Pre-Shave Oil (2 oz)
--                     (1) Ocean Kelp Shaving Cream (5 oz)
--                     (1) Black Pure Badger Shaving Brush
--                     (1) Ocean Kelp After-Shave Lotion(3.3 oz)'),


-- ('./images/shaving-kits/image21.PNG' ,'Lemon Full Size Kit with Fine Badger Brush',
-- 175,
-- 'Shaving Kits',
-- 'Lemon',  
-- 'Full Size',
-- 'Fine', 
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Fine Badger Shaving Brush.',
--                     'Lemon Pre-Shave Oil 2 oz.
--                     Lemon Shaving Cream 5 oz.
--                     Fine Badger Shaving Brush
--                     Lemon After-Shave Balm 3.3 oz'),


-- ('./images/shaving-kits/image22.PNG' ,'Unscented Full Size Kit with Silvertip Badger Brush',
-- 225,
-- 'Shaving Kits',
-- 'Unscented',
-- 'Full Size',
-- 'Silvertip', 
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Silvertip Badger Black Shaving Brush.',
--                     'Unscented Kelp Pre-Shave Oil 2 oz.
--                     Unscented Shaving Cream 5 oz.
--                     Silvertip Badger Shaving Brush
--                     Unscented After-Shave Balm 3.3 oz'),


-- ('./images/shaving-kits/image23.PNG' ,'Sandalwood Full Size Kit with Silvertip Badger Brush',
-- 225,
-- 'Shaving Kits',
-- 'Sandalwood', 
-- 'Full Size',
-- 'Silvertip', 
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Silvertip Badger Black Shaving Brush.',
--                   'Sandalwood Pre-Shave Oil 2 oz.
--                   Sandalwood Shaving Cream 5 oz.
--                   Silvertip Badger Shaving Brush
--                   Sandalwood After-Shave Balm 3.3 oz'),


-- ('./images/shaving-kits/image24.PNG' ,'Lavender Full Size Kit with Silvertip Badger Brush',
-- 225,
-- 'Shaving Kits',
-- 'Lavender', 
-- 'Full Size',
-- 'Silvertip', 
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Silvertip Badger Black Shaving Brush.',
--                 'Lavender Pre-Shave Oil 2 oz.
--                 Lavender Shaving Cream 5 oz.
--                 Silvertip Badger Shaving Brush
--                 Lavender After-Shave Balm 3.3 oz'),


-- ('./images/shaving-kits/image25.PNG' ,'Ocean Kelp Full Size Kit with Silvertip Badger Brush',
-- 240,
-- 'Shaving Kits',
-- 'Ocean Kelp', 
-- 'Full Size',
-- 'Silvertip', 
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Silvertip Badger Black Shaving Brush.',
--                 'Ocean Kelp Pre-Shave Oil 2 oz.
--                 Ocean Kelp Shaving Cream 5 oz.
--                 Silvertip Badger Shaving Brush
--                 Ocean Kelp After-Shave Balm 3.3 oz'),


-- ('./images/shaving-kits/image26.PNG' ,'Lemon Full Size Kit with Silvertip Badger Brush',
-- 225,
-- 'Shaving Kits',
-- 'Lemon',  
-- 'Full Size',
-- 'Silvertip', 
-- 'The 4 Elements of The Perfect Shave combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks and cuts. The Full Size Kit offers Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz), and a Silvertip Badger Black Shaving Brush.',

--                 'Lemon Pre-Shave Oil 2 oz.
--                 Lemon Shaving Cream 5 oz.
--                 Silvertip Badger Shaving Brush
--                 Lemon After-Shave Balm 3.3 oz'),


-- ('./images/shaving-kits/image27.PNG' ,'Unscented Carry-On Kit',
-- 60,
-- 'Carry-on',
-- 'Unscented',   
-- 'Travel',
-- 'Pure',
-- 'Product Description: The 4 Elements of The Perfect Shave® combine The Art of Shaving''s aromatherapy-based products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. Our Carry-On contains the essentials for a close and comfortable shave while you are on the go. The pouch is designed with a zip top closure for secure transport and is ideal for packing INTEGERo your carry on luggage. Contains: Pre-Shave Oil Pump (1 fl. oz.), Shaving Cream Pump (1.5 fl.) oz., Badger Shaving Brush, After-Shave Balm Pump (1 fl. oz.',
-- 'null'),


-- ('./images/shaving-kits/image28.PNG' ,'Sandalwood Carry-On Kit',
-- 60,
-- 'Carry-on',
-- 'Sandalwood', 
-- 'Travel',
-- 'Pure',
-- 'Product Description: The 4 Elements of The Perfect Shave® combine The Art of Shaving''s aromatherapy-based products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. Our Carry-On contains the essentials for a close and comfortable shave while you are on the go. The pouch is designed with a zip top closure for secure transport and is ideal for packing INTEGERo your carry on luggage. Contains: Pre-Shave Oil Pump (1 fl. oz.), Shaving Cream Pump (1.5 fl.) oz., Badger Shaving Brush, After-Shave Balm Pump (1 fl. oz.',
-- 'null'),


-- ('./images/shaving-kits/image29.PNG' ,'Lavender Carry-On Kit',
-- 60,
-- 'Carry-on',
-- 'Lavender', 
-- 'Travel',
-- 'Pure',
-- 'Product Description: The 4 Elements of The Perfect Shave® combine The Art of Shaving''s aromatherapy-based products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. Our Carry-On contains the essentials for a close and comfortable shave while you are on the go. The pouch is designed with a zip top closure for secure transport and is ideal for packing INTEGERo your carry on luggage. Contains: Pre-Shave Oil Pump (1 fl. oz.), Shaving Cream Pump (1.5 fl.) oz., Badger Shaving Brush, After-Shave Balm Pump (1 fl. oz.)',
-- 'NULL'),



-- ('./images/shaving-kits/image30.PNG' ,'Lemon Carry-On Kit',
-- 60,
-- 'Carry-on',
-- 'Lemon',  
-- 'Travel',
-- 'Pure',
-- 'Product Description: The 4 Elements of The Perfect Shave® combine The Art of Shaving''s aromatherapy-based products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. Our Carry-On contains the essentials for a close and comfortable shave while you are on the go. The pouch is designed with a zip top closure for secure transport and is ideal for packing INTEGERo your carry on luggage. Contains: Pre-Shave Oil Pump (1 fl. oz.), Shaving Cream Pump (1.5 fl.) oz., Badger Shaving Brush, After-Shave Balm Pump (1 fl. oz.)',
-- 'NULL'),


-- ('./images/shaving-kits/image31.PNG' ,'Oud Replenishment Bundle',
-- 95, 
-- 'replentishment', 
-- 'null', 
-- 'null', 
-- 'null', 
-- 'null', 
-- 'Elevate your collection highlights the Pre-Shave Oil, Shaving Cream, and After-Shave Balm, the epitome of luxury aromas inspired by our Oud Suede Cologne INTEGERense.',
-- 'Contains Oud Pre-Shave Oil, Oud Shaving Cream*, and Oud After-Shave Balmritual with the opulent aromas of exotic spices, and dark woods.'),




-- ('./images/shaving-kits/image32.PNG' , 'Unscented Replenishment Bundle', 
-- 80 , 'replentishment', 
-- 'Unscented', 
-- 'null' ,
-- 'null', 
-- 'null', 
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Replenishment Unscented Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'null'),

-- ('./images/shaving-kits/image33.PNG' ,'Sandalwood Replenishment Bundle', 
-- 80, 
-- 'replentishment', 
-- 'Sandalwood', 
-- 'null' , 
-- 'null', 
-- 'null', 
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Sandalwood Replenishment Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'null'),


-- ('./images/shaving-kits/image34.PNG' , 'Lavender Replenishment Bundle', 
-- 80 , 
-- 'replentishment', 
-- 'Lavender', 
-- 'null' ,
-- 'null', 
-- 'null', 
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Lavendar Replenishment Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'null'),


-- ('./images/shaving-kits/image35.PNG' ,'Ocean Kelp Replenishment Bundle', 
-- 80 , 
-- 'replentishment', 
-- 'Ocean Kelp', 
-- 'null' ,
-- 'null', 
-- 'null', 
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Ocean Kelp Replenishment Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'null'),

-- ('./images/shaving-kits/image36.PNG' ,'Lemon Replenishment Bundle', 
-- 80 , 
-- 'replentishment', 
-- 'Lemon', 
-- 'null' ,
-- 'null', 
-- 'null', 
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Lemon Replenishment Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'null'),


-- --------------------

-- ('./images/shaving-kits/image.PNG' ,'Lemon Replenishment with ProShield Cartridges (8 Count)', 
-- 100, 
-- 'replentishment', 
-- 'Lemon', 
-- 'null' , 
-- 'null' 
-- 'null', 
-- 'null', 
-- 'null',
-- 'null'),

-- ('./images/shaving-kits/image.PNG' ,'Unscented Replenishment with ProShield Cartridges (8 Count)', 
-- 100 , 
-- 'replentishment', 
-- 'Unscented', 
-- 'null' ,
-- 'null' 
-- 'null', 
-- 'null', 
-- 'null',
-- 'null'),

-- ('./images/shaving-kits/image.PNG' ,'Ocean Kelp Replenishment with ProShield Cartridges (8 Count)', 
-- 110 , 
-- 'replentishment', 
-- 'Ocean Kelp', 
-- 'null' ,
-- 'null' 
-- 'null', 
-- 'null', 
-- 'null',
-- 'null'),

-- ('./images/shaving-kits/image.PNG' ,'Lavender Replenishment with ProShield Cartridges (8 Count)', 
-- 100 , '
-- replentishment', 
-- 'Lavender', 
-- 'null' ,
-- 'null' 
-- 'null', 
-- 'null', 
-- 'null',
-- 'null'),

-- ('./images/shaving-kits/image.PNG' ,'Sandelwood Replenishment with ProShield Cartridges (8 Count)', 
-- 100 , 
-- 'replentishment', 
-- 'Sandelwood',
-- 'null' ,
-- 'null' 
-- 'null', 
-- 'null', 
-- 'null',
-- 'null')















-- -- (img, 'name',  price , 'type', 'aroma', 'size', 'brush_grade', 'detail', 'features'),


-- -- ('./images/shaving-kits/image.PNG' ,'name', price , 'type', 'aroma', 'size', 'brush_grade', 'detail',
-- -- 'features'),





















