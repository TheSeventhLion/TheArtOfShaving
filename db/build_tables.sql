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






-- //////////////////////////INSERT INTEGER TABLE/////////////////////////////////////////
-- insert into products (img, name,  price , type, aroma, size, brush_grade, detail, features)
-- VALUES 



-- ('./images/shaving-kits/image0.PNG' , 
-- 'Unscented Full Size Kit With Genuine Badger Brush', 
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


-- ('./images/shaving-kits/image1.PNG' , 
-- 'Sandalwood Full Size Kit With Genuine Badger Brush', 
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


-- ('./images/shaving-kits/image2.PNG' ,
-- 'Lavender Full Size Kit With Genuine Badger Brush',
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


-- ('./images/shaving-kits/image3.PNG' ,
-- 'Ocean Kelp Full Size Kit With Genuine Badger Brush', 
-- 110,
-- 'Shaving Kits',
-- 'Ocean Kelp',
-- 'Full Size',
-- 'Genuine Badger',   
--   'The Full Size Kit includes all four elements of The Perfect Shave®, Pre-Shave Gel, Shaving Cream, a Shaving Brush, and our After-Shave Lotion. The combination of these quality ingredients, handcrafted accessories, and expert shaving technique provides optimal closeness while helping ward against ingrown hairs, razor burn, and nicks and cuts, while leaving behind a soft and smooth face.',               
--                     '(1) Ocean Kelp Pre-Shave Oil (2 oz)
--                     (1) Ocean Kelp Shaving Cream (5 oz)
--                     (1) Black Pure Badger Shaving Brush
--                     (1) Ocean Kelp After-Shave Lotion(3.3 oz)')


-- ,('./images/shaving-kits/image4.PNG' ,
-- 'Lemon Full Size Kit With Genuine Badger Brush',
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

-- ('./images/shaving-kits/image5.PNG' ,
-- 'Unscented Full Size Kit with Pure Badger Brush',
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


-- ('./images/shaving-kits/image6.PNG' ,
-- 'Sandalwood Full Size Kit with Pure Shaving Brush',
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


-- ('./images/shaving-kits/image7.PNG' ,
-- 'Lavender Full Size Kit with Pure Shaving Brush',
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


-- ('./images/shaving-kits/image8.PNG' ,
-- 'Ocean Kelp Full Size Kit with Pure Shaving Brush',
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


-- ('./images/shaving-kits/image9.PNG' ,
-- 'Unscented Mid-Size Kit',
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


-- ('./images/shaving-kits/image10.PNG' ,
-- 'Sandalwood Mid-Size Kit', 
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



-- ('./images/shaving-kits/image11.PNG' ,
-- 'Lavender Mid-Size Kit', 
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


-- ('./images/shaving-kits/image12.PNG' ,
-- 'Lemon Mid-Size Kit', 
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


-- ('./images/shaving-kits/image13.PNG' ,
-- 'Unscented Starter Kit', 
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


-- ('./images/shaving-kits/image14.PNG', 
-- 'Sandalwood Starter Kit', 
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


-- ('./images/shaving-kits/image15.PNG' ,
-- 'Lavender Starter Kit', 
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


-- ('./images/shaving-kits/image16.PNG' ,
-- 'Lemon Starter Kit', 
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


-- ('./images/shaving-kits/image17.PNG' 
-- ,'Unscented Full Size Kit with Fine Badger Brush', 
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


-- ('./images/shaving-kits/image18.PNG' ,
-- 'Sandalwood Full Size Kit with Fine Shaving Brush', 
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


-- ('./images/shaving-kits/image19.PNG' ,
-- 'Lavender Full Size Kit with Fine Badger Brush',
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


-- ('./images/shaving-kits/image20.PNG' ,
-- 'Ocean Kelp Full Size Kit with Fine Badger Brush',
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


-- ('./images/shaving-kits/image21.PNG' ,
-- 'Lemon Full Size Kit with Fine Badger Brush',
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


-- ('./images/shaving-kits/image22.PNG' ,
-- 'Unscented Full Size Kit with Silvertip Badger Brush',
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


-- ('./images/shaving-kits/image23.PNG' ,
-- 'Sandalwood Full Size Kit with Silvertip Badger Brush',
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


-- ('./images/shaving-kits/image24.PNG' ,
-- 'Lavender Full Size Kit with Silvertip Badger Brush',
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


-- ('./images/shaving-kits/image25.PNG' , 
-- 'Ocean Kelp Full Size Kit with Silvertip Badger Brush',
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


-- ('./images/shaving-kits/image26.PNG' ,
-- 'Lemon Full Size Kit with Silvertip Badger Brush',
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


-- ('./images/shaving-kits/image27.PNG' ,
-- 'Unscented Carry-On Kit',
-- 60,
-- 'Carry-on',
-- 'Unscented',   
-- 'Travel',
-- 'Pure',
-- 'Product Description: The 4 Elements of The Perfect Shave® combine The Art of Shaving''s aromatherapy-based products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. Our Carry-On contains the essentials for a close and comfortable shave while you are on the go. The pouch is designed with a zip top closure for secure transport and is ideal for packing INTEGERo your carry on luggage. Contains: Pre-Shave Oil Pump (1 fl. oz.), Shaving Cream Pump (1.5 fl.) oz., Badger Shaving Brush, After-Shave Balm Pump (1 fl. oz.',
-- 'NULL'),


-- ('./images/shaving-kits/image28.PNG' ,
-- 'Sandalwood Carry-On Kit',
-- 60,
-- 'Carry-on',
-- 'Sandalwood', 
-- 'Travel',
-- 'Pure',
-- 'Product Description: The 4 Elements of The Perfect Shave® combine The Art of Shaving''s aromatherapy-based products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. Our Carry-On contains the essentials for a close and comfortable shave while you are on the go. The pouch is designed with a zip top closure for secure transport and is ideal for packing INTEGERo your carry on luggage. Contains: Pre-Shave Oil Pump (1 fl. oz.), Shaving Cream Pump (1.5 fl.) oz., Badger Shaving Brush, After-Shave Balm Pump (1 fl. oz.',
-- 'NULL'),


-- ('./images/shaving-kits/image29.PNG' ,
-- 'Lavender Carry-On Kit',
-- 60,
-- 'Carry-on',
-- 'Lavender', 
-- 'Travel',
-- 'Pure',
-- 'Product Description: The 4 Elements of The Perfect Shave® combine The Art of Shaving''s aromatherapy-based products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. Our Carry-On contains the essentials for a close and comfortable shave while you are on the go. The pouch is designed with a zip top closure for secure transport and is ideal for packing INTEGERo your carry on luggage. Contains: Pre-Shave Oil Pump (1 fl. oz.), Shaving Cream Pump (1.5 fl.) oz., Badger Shaving Brush, After-Shave Balm Pump (1 fl. oz.)',
-- 'NULL'),



-- ('./images/shaving-kits/image30.PNG' ,
-- 'Lemon Carry-On Kit',
-- 60,
-- 'Carry-on',
-- 'Lemon',  
-- 'Travel',
-- 'Pure',
-- 'Product Description: The 4 Elements of The Perfect Shave® combine The Art of Shaving''s aromatherapy-based products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. Our Carry-On contains the essentials for a close and comfortable shave while you are on the go. The pouch is designed with a zip top closure for secure transport and is ideal for packing INTEGERo your carry on luggage. Contains: Pre-Shave Oil Pump (1 fl. oz.), Shaving Cream Pump (1.5 fl.) oz., Badger Shaving Brush, After-Shave Balm Pump (1 fl. oz.)',
-- 'NULL'),


-- ('./images/shaving-kits/image31.PNG' ,
-- 'Oud Replenishment Bundle',
-- 95, 
-- 'replentishment', 
-- 'NULL', 
-- 'NULL', 
-- 'NULL', 
-- 'Elevate your collection highlights the Pre-Shave Oil, Shaving Cream, and After-Shave Balm, the epitome of luxury aromas inspired by our Oud Suede Cologne INTEGERense.',
-- 'Contains Oud Pre-Shave Oil, Oud Shaving Cream*, and Oud After-Shave Balmritual with the opulent aromas of exotic spices, and dark woods.'),




-- ('./images/shaving-kits/image32.PNG' , 
-- 'Unscented Replenishment Bundle', 
-- 80, 
-- 'replentishment', 
-- 'Unscented',
-- 'NULL', 
-- 'NULL', 
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Replenishment Unscented Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'NULL'),

-- ('./images/shaving-kits/image33.PNG' ,
-- 'Sandalwood Replenishment Bundle', 
-- 80, 
-- 'replentishment', 
-- 'Sandalwood', 
-- 'NULL' ,  
-- 'NULL', 
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Sandalwood Replenishment Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'NULL'),


-- ('./images/shaving-kits/image34.PNG' , 
-- 'Lavender Replenishment Bundle', 
-- 80 , 
-- 'replentishment', 
-- 'Lavender', 
-- 'NULL' ,
-- 'NULL',  
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Lavendar Replenishment Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'NULL'),


-- ('./images/shaving-kits/image35.PNG' ,
-- 'Ocean Kelp Replenishment Bundle', 
-- 80 , 
-- 'replentishment', 
-- 'Ocean Kelp', 
-- 'NULL' ,
-- 'NULL',  
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Ocean Kelp Replenishment Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'NULL'),

-- ('./images/shaving-kits/image36.PNG' ,
-- 'Lemon Replenishment Bundle', 
-- 80 , 
-- 'replentishment', 
-- 'Lemon', 
-- 'NULL' ,
-- 'NULL',  
-- 'The 4 Elements of The Perfect Shave® combine The Art of Shaving''s high quality products, handcrafted accessories and expert shaving technique to provide optimal shaving results while helping against ingrown hairs, razor burn, and nicks & cuts. The Lemon Replenishment Bundle includes Pre-Shave Oil (2 fl. oz), Shaving Cream (5.0 oz), After-Shave Balm (3.3 fl. oz)',
-- 'NULL'),


-- -- ///////////////////////////////////////////////////////


-- ('./images/shaving-kits/image37.PNG' ,
-- 'Lemon Replenishment with ProShield Cartridges (8 Count)', 
-- 100, 
-- 'replentishment', 
-- 'Lemon', 
-- 'NULL' , 
-- 'NULL', 
-- 'NULL',
-- 'NULL'),

-- ('./images/shaving-kits/image38.PNG' ,
-- 'Unscented Replenishment with ProShield Cartridges (8 Count)', 
-- 100 , 
-- 'replentishment', 
-- 'Unscented', 
-- 'NULL', 
-- 'NULL', 
-- 'NULL',
-- 'NULL'),

-- ('./images/shaving-kits/image39.PNG' ,
-- 'Ocean Kelp Replenishment with ProShield Cartridges (8 Count)', 
-- 110 , 
-- 'replentishment', 
-- 'Ocean Kelp', 
-- 'NULL' , 
-- 'NULL', 
-- 'NULL',
-- 'NULL'),

-- ('./images/shaving-kits/image40.PNG' ,
-- 'Lavender Replenishment with ProShield Cartridges (8 Count)', 
-- 100 , 
-- 'replentishment', 
-- 'Lavender', 
-- 'NULL' ,
-- 'NULL', 
-- 'NULL',
-- 'NULL'),

-- ('./images/shaving-kits/image41.PNG' ,
-- 'Sandelwood Replenishment with ProShield Cartridges (8 Count)', 
-- 100 , 
-- 'replentishment', 
-- 'Sandelwood',
-- 'NULL' ,
-- 'NULL', 
-- 'NULL', 
-- 'NULL'),


-- -------------------------------------RAZORS---------------------------------------------------------


-- ('img', 'name',  price , 'type', 'aroma', 'size', 'brush_grade', 'detail', 'features'),


-- -- ('./images/shaving-kits/image.PNG*****' ,
-- -- 'name', 
-- -- price , 
-- -- 'type', 
-- -- 'aroma', 
-- -- 'size', 
-- -- 'brush_grade', 
-- -- 'detail',
-- -- 'features'),


-- ('./images/shaving-kits/image42.PNG' ,
-- 'Unscented Gift Set with Lexington Fusion Razor',
-- 150 ,
-- 'Gift-Set', 
-- 'Unscented', 
-- 'Mid-Size', 
-- 'Genuine Badger', 
-- 'The Art of Shaving Lexington Collection™ Razor is our most
-- technologically advanced manual razor. Paired with an Unscented Mid-size Shaving Kit, this Lexington Razor Gift Set is
-- available for a limited time only at $150 ( $206 value).
 
-- Featuring Flexball™ technology that responds to facial contours, it pivots in multiple directions for maximum contact
-- with the skin. The result is a cleaner, closer shave with fewer strokes. Its exclusive design is inspired by our first
-- location on Lexington Avenue.',

-- 'Flexball™ helps enable 23% closer contact to skin for a smoother shaving experience (as compared to ProGlide® razor
-- handle without Flexball™)
-- Distinctive black satin finish with chrome plated accents over zinc
-- Comes with a Gillette® Fusion® ProGlide® Manual Blade; fits all Fusion Cartridges'),




-- ('./images/shaving-kits/image43.PNG' ,
-- 'Lemon Gift Set with Lexington Fusion Razor', 
-- 150 , 
-- 'Gift-Set', 
-- 'Lemon', 
-- 'Mid-Size', 
-- 'Genuine Badger', 
-- 'The Art of Shaving Lexington Collection™ Razor is our most technologically advanced manual razor. Paired with a Lemon Mid-size Shaving Kit, this Lexington Razor Gift Set is available for a limited time only at $150 ( $206 value).
 
-- Featuring Flexball™ technology that responds to facial contours, it pivots in multiple directions for maximum contact with the skin. The result is a cleaner, closer shave with fewer strokes. Its exclusive design is inspired by our first location on Lexington Avenue.',

-- 'Flexball™ helps enable 23% closer contact to skin for a smoother shaving experience (as compared to ProGlide® razor handle without Flexball™)
-- Distinctive black satin finish with chrome plated accents over zinc
-- Comes with a Gillette® Fusion® ProGlide® Manual Blade; fits all Fusion Cartridges'),


-- ('./images/shaving-kits/image44.PNG' ,
-- 'Lavender Gift Set with Lexington Fusion Razor', 
-- 150 , 
-- 'Gift-Set', 
-- 'Lavender', 
-- 'Mid-Size', 
-- 'Genuine Badger', 
-- 'The Art of Shaving Lexington Collection™ Razor is our most technologically advanced manual razor. Paired with a Lemon Mid-size Shaving Kit, this Lexington Razor Gift Set is available for a limited time only at $150 ( $206 value).
 
-- Featuring Flexball™ technology that responds to facial contours, it pivots in multiple directions for maximum contact with the skin. The result is a cleaner, closer shave with fewer strokes. Its exclusive design is inspired by our first location on Lexington Avenue.',

-- 'Flexball™ helps enable 23% closer contact to skin for a smoother shaving experience (as compared to ProGlide® razor handle without Flexball™)
-- Distinctive black satin finish with chrome plated accents over zinc
-- Comes with a Gillette® Fusion® ProGlide® Manual Blade; fits all Fusion Cartridges'),


-- ('./images/shaving-kits/image45.PNG' ,
-- 'Sandalwood Gift Set with Lexington Fusion Razor', 
-- 150 , 
-- 'Gift-Set', 
-- 'Sandalwood', 
-- 'Mid-Size', 
-- 'Genuine Badger', 
-- 'The Art of Shaving Lexington Collection™ Razor is our most technologically advanced manual razor. Paired with a Lemon Mid-size Shaving Kit, this Lexington Razor Gift Set is available for a limited time only at $150 ( $206 value).
 
-- Featuring Flexball™ technology that responds to facial contours, it pivots in multiple directions for maximum contact with the skin. The result is a cleaner, closer shave with fewer strokes. Its exclusive design is inspired by our first location on Lexington Avenue.',

-- 'Flexball™ helps enable 23% closer contact to skin for a smoother shaving experience (as compared to ProGlide® razor handle without Flexball™)
-- Distinctive black satin finish with chrome plated accents over zinc
-- Comes with a Gillette® Fusion® ProGlide® Manual Blade; fits all Fusion Cartridges'),


-- -------------------------------------------------------

-- ('./images/shaving-kits/image46.PNG' ,
-- 'Mach 3 Compact Shaving Set - Black', 
-- 215 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'Genuine Badger', 
-- 'The Art of Shaving Compact Shaving Set is designed and handcrafted for maximum performance and space efficiency. The acrylic razor and brush handles are available in black or faux ivory. Razor can be used with Mach3® blades by Gillette®',
-- 'NULL'),

-- ('./images/shaving-kits/image47.PNG' ,
-- 'Mach 3 Contemporary Shaving Set - Black', 
-- 280, 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'Genuine Badger', 
-- 'The Art of Shaving Compact Shaving Set is designed and handcrafted for maximum performance and space efficiency. The acrylic razor and brush handles are available in black or faux ivory. Razor can be used with Mach3® blades by Gillette®',
-- 'NULL'),


-- ('./images/shaving-kits/image48.PNG' ,
-- 'Mach 3 Engraved Nickel Plated Shaving Set', 
-- 585, 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'Silvertip', 
-- 'The Art of Shaving Compact Shaving Set is designed and handcrafted for maximum performance and space efficiency. The acrylic razor and brush handles are available in black or faux ivory. Razor can be used with Mach3® blades by Gillette®',
-- 'NULL'),

-- -- //////////////////////////////////////////////////////////////

-- ('./images/shaving-kits/image49.PNG' ,
-- 'Fusion Compact Shaving Set - Black', 
-- 215 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'Pure', 
-- 'The Art of Shaving Compact Shaving Set is designed and handcrafted for maximum performance and space efficiency. The acrylic razor and brush handles are available in black or faux ivory. Razor can be used with Fusion™ blades by Gillette®',
-- 'NULL'),



-- ('./images/shaving-kits/image50.PNG' ,
-- 'Fusion Compact Shaving Set - Ivory', 
-- 280 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'Pure', 
-- 'The Art of Shaving Compact Shaving Set is designed and handcrafted for maximum performance and space efficiency. The acrylic razor and brush handles are available in black or faux ivory. Razor can be used with Fusion blades by Gillette®',
-- 'NULL'),



-- ('./images/shaving-kits/image51.PNG' ,
-- 'Fusion Contemporary Shaving Set - Black', 
-- 280 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'Pure', 
-- 'The Art of Shaving Compact Shaving Set is designed and handcrafted for maximum performance and space efficiency. The acrylic razor and brush handles are available in black or faux ivory. Razor can be used with Fusion blades by Gillette®',
-- 'NULL'),


-- ('./images/shaving-kits/image52.PNG' ,
-- 'Fusion Contemporary Shaving Set - Ivory', 
-- 280 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- ' Pure ', 
-- 'The Art of Shaving Compact Shaving Set is designed and handcrafted for maximum performance and space efficiency. The acrylic razor and brush handles are available in black or faux ivory. Razor can be used with Fusion blades by Gillette®',
-- 'NULL'),



-- ('./images/shaving-kits/image53.PNG' ,
-- 'Fusion Engraved Nickel Plated Shaving Set', 
-- 610 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'Silvertip', 
-- 'The Art of Shaving elegantly designed and handcrafted Engraved Shaving Set offers laser-engraved handles to ensure a non-slip grip. The silvertip badger shaving brush and razor handles are heavy to provide comfort and balance while shaving. Razor can be used with Fusion ™ blades by Gillette ®',
-- 'NULL'),


-- ('./images/shaving-kits/image54.PNG' ,
-- 'Fusion Chrome Collection Manual Shaving Set - Pure', 
-- 290 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'Pure', 
-- 'The Fusion Chrome Collection SHAVING SETS are an exceptional blend of style and performance, handcrafted in polished chrome, sleek and contemporary. The Razor and Shaving Brush handles—perfectly balanced, with a micro-textured grip surface—are an ideal combination of ergonomics and innovative design. The Shaving Stands serve as an elegant display for either the Fusion Chrome Manual Razor or Power Razor and Shaving Brush, efficiently draining water away and maintaining handles properly between each use.',
-- 'NULL'),



-- ('./images/shaving-kits/image55.PNG' ,
-- ' Fusion Chrome Collection Manual Shaving Set - Fine ', 
-- 370 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- ' Fine ', 
-- 'The Fusion Chrome Collection shaving sets are an exceptional blend of style and performance, handcrafted in polished chrome, sleek and contemporary. The Razor and Shaving Brush handles—perfectly balanced, with a micro-textured grip surface—are an ideal combination of ergonomics and innovative design. The Shaving Stands serve as an elegant display for either the Fusion Chrome Manual Razor or Power Razor and Shaving Brush, efficiently draining water away and maintaining handles properly between each use.',
-- 'NULL'),


-- ('./images/shaving-kits/image56.PNG' ,
-- 'R89 Grande Shaving Set', 
-- 135 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'NULL ', 
-- 'R89 Grande Shaving Set by Mühle delivers a high element of function and style for every safety razor shaver. The fine engraved handle helps with grip while delivering a clean, smooth shave. The shaving stand perfectly stores the safety razor blade side down to allow for proper drainage.',

-- 'Closed comb design is less aggressive than an open comb safety razor allowing for better control during shave.
-- Fine engraved detail handle. Chrome plating over zamak* metal. Handle measures 4.2 inches in length.'),


-- ('./images/shaving-kits/image57.PNG' ,
-- 'Classic Horn Shaving Set', 
-- 485 , 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- ' Silvertip ', 
-- 'The Art of Shaving Horn Shaving Set is sleekly contemporary, ergonomically designed to convey style and individuality. Masterfully crafted from authentic horn, hand selected for its unique pattern and rich tones of color, the razor and brush handles are perfectly balanced for optimum performance. Razor can be used with MACH3® blades by Gillette®',
-- 'NULL'),



-- ('./images/shaving-kits/image58.PNG' ,
-- ' Rose Gold Safety Razor Shaving Set with Fine Brush ', 
-- 355 , 
-- 'Shaving Kits', 
-- ' NULL', 
-- 'small', 
-- ' Silvertip ', 
-- ' Product Description:The Art of Shaving Rose Gold Shaving Set by Mühle of Germany adds a touch of classic elegance to any countertop or shower. This Shaving Set includes the Rose Gold Safety Razor, Rose Gold Fine Badger Shaving Brush, and Safety Razor and Brush Stand. The well designed rose gold colored handles will deliver a close shave while the sleek and simple design of the shaving stand is easy to use. This stylish addition sets itself apart from any shaving routine. Please note, this shaving set is not available for purchase in Illinois. ',
--           'Rose Gold Safety Razor: 
--           -Closed comb, double edged razor 
--           -Fine engraved detail handle 
--           -Rose gold colored plating (copper and gold plating mix) with chrome accents over zamak* metal 
--           -Handle measures 4.2 inches in length
--           Rose Gold Shaving Brush: 
--           -Fine Badger Hair 
--           -Engraved detail handle 
--           -Rose gold colored plating (copper and gold plating mix) with chrome accents 
--           -Handle measures 3.85 inches in length, 1.18 inches in width
--           Brush and Razor Stand: 
--           -Simple stand with placement for a safety razor and shaving brush 
--           -Chrome plated zamak* metal 
--           -3 inches high and 2.5 inches in diameter 
--           -Fits most safety razors and brushes carried by The Art of Shaving'),



-- ('./images/shaving-kits/image59.PNG' ,
-- 'Noir Shaving Set', 
-- 850, 
-- 'Shaving Kits', 
-- 'NULL', 
-- 'small', 
-- 'Silvertip', 
-- 'NULL',
-- 'NULL'),



-- ('./images/shaving-kits/image60.PNG' ,
-- ' Power Shave Collection Shaving Set - Fine ', 
-- 470 , 
-- 'Shaving Kits', 
-- ' NULL', 
-- 'small', 
-- ' Fine ', 
-- ' Power Shave Collection features advanced shaving instruments that combine high performance design and powered motion for optimal shaving results. The Power Brush, a first of its kind world-wide, lifts the beard with powered oscillations for a close and comfortable shave. The power razor is handcrafted in polished chrome and ergonomically designed to feel like a natural extension of your hand. Completing the collection, the Customizable Stand with a modern, modular design, adjusting easily to your storage and display needs. ',
-- 'NULL'),


-- ('./images/shaving-kits/image61.PNG' ,
-- ' Power Shave Collection Shaving Set - Pure ', 
-- 420 , 
-- 'Shaving Kits', 
-- ' NULL', 
-- 'small', 
-- ' Pure ', 
-- ' Power Shave Collection features advanced shaving instruments that combine high performance design and powered motion for optimal shaving results. The Power Brush, a first of its kind world-wide, lifts the beard with powered oscillations for a close and comfortable shave. The power razor is handcrafted in polished chrome and ergonomically designed to feel like a natural extension of your hand. Completing the collection, the Customizable Stand with a modern, modular design, adjusting easily to your storage and display needs.',
-- 'NULL'),


-- ('./images/shaving-kits/image62.PNG' ,
-- ' Rose Gold Safety Razor Shaving Set ', 
-- 150 , 
-- 'Shaving Kits', 
-- ' NULL', 
-- 'small', 
-- ' NULL ', 
-- ' The Rose Gold Safety Razor Shaving Set by Mühle adds a touch of classic elegance to any countertop or shower. The well designed handle will deliver a close shave while the sleek and simple design of the shaving stand is easy to use. This stylish addition sets itself apart from any shaving routine. ',
--           'Features:
--           Closed comb, double edged Safety razor.
--           Fine engraved detail handle.
--           Rose gold colored plating (copper and gold plating mix) with chrome accents over zamak* metal.
--           Handle measures 3.5 inches in length.

--           Benefits:
--           Double edged blade allows for use on both sides to help extend blade life.
--           High quality chrome plated handle will help resist rust and wear well in a wet environment.
--           Fits most safety razors carried by The Art of Shaving.'),



-- ('./images/shaving-kits/image63.PNG' ,
-- ' Chelsea Collection Shaving Set ', 
-- 250 , 
-- 'Shaving Kits', 
-- ' NULL', 
-- 'small', 
-- ' Genuine Badger ', 
-- ' The Chelsea Collection features a matte black finish and nickel-plated accents brings to life the spirit, social diversity, art, and bold views of the Chelsea neighborhood of Manhattan. ',

--           'Features:
--           Properly weighted and balanced handle acts as a natural extension of your hand to help minimize the need to place pressure on the face.
--           Matte black finish with fluted metal gripping.
--           Fine Badger brush is handmade to preserve the soft white tips of the natural badger hair.
--           The stand has a lacquered base and is a solid foundation for the sleek, glossy nickel plated arm.

--           Benefits:
--           High quality nickel plated accents add classic details to a modern handle.
--           The stand fits the Chelsea Razor and Shaving Brush.
--           Base handle is 5.5” with a ½” diameter. Full length of the razor is 5.9”.')


-- ////////////////////////////////////////////////////////////////////RAZORS////////////////////////////////////////////////////////////////

-- -- insert into products (img, name,  price , type, aroma, size, brush_grade, detail, features)
-- -- VALUES 



-- ('./images/shaving-kits/image64.PNG', 
-- 'R89 Grande Safety Razor',  
-- 135 , 
-- 'razor', 
-- 'null', 
-- 'null', 
-- 'null', 
-- 'The R89 Grande Safety Razor by Mühle of Germany delivers a high element of function and style for any shaver. The fine engraved handle helps enable grip while delivering a clean, smooth shave. Pairs well with our Fusion Chrome Collection handled brushes in fine and pure badger hair as well as the Mühle safety razor stands. Please note, this razor is not available for purchase in Illinois.', 
-- 'Closed comb design is less aggressive than an open comb safety razor allowing for better control during shave.
-- Double edged blade allows for use on both sides to help extend blade life.
-- High quality chrome plated handle will help resist rust and wear well in a wet environment.'),


-- ('./images/shaving-kits/image65.PNG', 
-- 'R106 Short Black Safety Razor',  
-- 70 , 
-- 'razor', 
-- 'null', 
-- 'null', 
-- 'null', 
-- 'The Limited Edition R106 Safety Razor by Mühle of Germany is as timeless as it is functional. The short handle fits comfortably in the hand to help maintain control during the shave. The black handle is sleek and sophisticated and pairs nicely with our line of black shaving brushes as well as the Mühle safety razor stands. Please note, this product is not available for purchase in Illinois.',
-- 'Closed comb, double edged razor
-- Black polyester and chrome plated handle
-- Handle measures 3.75 inches in length'),


-- ('./images/shaving-kits/image66.PNG', 
-- 'name',  
-- 100 , 
-- 'razor', 
-- 'null', 
-- 'null', 
-- 'null', 
-- 'The Rose Gold Safety Razor by Mühle of Germany adds a touch of classic elegance to our line of safety razors. The well designed rose gold colored handle will deliver a close shave while setting itself apart as a stylish addition to any shaving routine. Please note, this razor is not available for purchase in Illinois.', 
-- 'Closed comb, double edged razor
-- Fine engraved detail handle
-- Rose gold colored plating (copper and gold plating mix) with chrome accents over zamak* metal
-- Handle measures 3.5 inches in length'),


-- ('./images/shaving-kits/image67.PNG', 
-- 'Cross Knurl Safety Razor',  
-- 60 , 
-- 'razor', 
-- 'null', 
-- 'null', 
-- 'null', 
-- 'The Cross Knurl Safety Razor by Merkur of Germany delivers a clean, close shave with a traditional double edged blade. Features a thin long handle with micro engraving for an improved grip. Pairs well with our FCC chrome handled brushes in fine and pure badger hair.', 
-- 'Closed comb, double edged razor
-- Twist top releases plate to load blade
-- Handle measures 3.875 in length. Razor total dimensions are 1.625 L x 1 W x 4.125 H. Razor weighs 60g'),


-- ('./images/shaving-kits/image68.PNG', 
-- 'Single Knurl Safety Razor',  
-- 65 , 
-- 'razor', 
-- 'null', 
-- 'null', 
-- 'null', 
-- 'The first double-edged or safety razors were manufactured in 1901 by Gillette. The Art of Shaving has continued the tradition of shaving with these types of razors by offering an elegant selection of safety razors, handmade by MERKUR in Solingen, Germany. The chrome plated safety razor has a straight comb, long sturdy handle shaped like a barer pole. We use the same high standards of quality and manufacturing as were used in 1901, and the best possible quality steel available today .', 

-- 'Closed comb, double edged razor
-- Twist top releases plate to load blade
-- Handle measures 3.875 in length. Razor total dimensions are 1.625 L x 1 W x 4.125 H. Razor weighs 60g'),

-- ('./images/shaving-kits/image69.PNG', 
-- 'Chrome Heavyweight Safety Razor',
-- 65,
--  'razor',  
-- 'type', 
-- 'null', 
-- 'null',  
-- 'The first double-edged or safety razors were manufactured in 1901 by Gillette. The Art of Shaving has continued the tradition of shaving with these types of razors by offering an elegant selection of safety razors, all handmade in Solingen, Germany. We use the same high standards of quality and manufacturing as were used in 1901, and the best possible quality steel available today.',
-- 'null'),

-- ('./images/shaving-kits/image70.PNG', 
-- 'Chrome Long Handle Progress Safety Razor',  
-- 90 , 
-- 'razor', 
-- 'null', 
-- 'null', 
-- 'null', 
-- 'The Progressive Long Handle Safety Razor by Merkur of Germany offers a personalized shaving experience. This safety razor easily adjusts the blade height in six settings to offer a perfect angle and blade exposure for your beard hair and skin. Along with a platinum coated stainless steel double edged blade, this razor delivers a clean, close shave.', 

-- 'Closed comb, double edged razor
-- Twist bottom handle to set blade exposure levels from 1 to 6. Bottom cap is made of acrylic
-- Chrome plated over zinc
-- Handle measures 3.65 in length. Razor total dimensions are 1.5 L x 1 W x 4.25 H. Handle weighs 99g'),


-- ('./images/shaving-kits/image71.PNG', 
-- 'Chrome Futura Safety Razor',  
-- 105 , 
-- 'razor', 
-- 'null', 
-- 'null', 
-- 'null', 
-- 'The Futura Safety Razor by Merkur of Germany offers a personalized shaving experience. This safety razor easily adjusts the blade height in six settings to offer a perfect angle and blade exposure for your beard hair and skin. Along with a platinum coated stainless steel double edged blade, this razor delivers a clean, close shave.', 

-- 'Closed comb, double edged razor
-- Snap top handle to set blade exposure levels from 1 to 6
-- Brushed chrome plated over zinc
-- Handle measures 3.5 in length. Razor total dimensions are 2 L x 1 W x 4.25 H. Razor weighs 121g'),


-- ('./images/shaving-kits/image72.PNG', 
-- 'Chrome Moustache Razor',  
-- 45 , 
-- 'razor', 
-- 'null', 
-- 'null', 
-- 'null', 
-- '
-- The Moustache Razor by Merkur of Germany is a perfect tool for precision detailing of beards, moustaches and goatees. The compact design features a wedge shaped head with two blade width options for heightened accuracy when creating lines and detail. May also be used on sideburns and eyebrows.', 

-- 'Closed comb, double edged razor
-- Screw top head to change blades
-- Plated with a mixture of chrome, nickel and copper over zinc')



-- /////////////////////////////////////////////////BRUSHES/////////////////////////////////////////////////////////////////////////////////////

-- insert into products (img, name,  price , type, aroma, size, brush_grade, detail, features)
-- VALUES 

-- ('./images/brushes/brush1.PNG', 
-- 'Lexington Collection Fine Shaving Brush',  
-- 150, 
-- 'brush', 
-- 'NULL', 
-- 'NULL', 
-- 'Fine', 
-- 'detail', 
-- 'features'),


-- ('./images/brushes/brush2.PNG', 
-- 'Black Fine Shaving Brush',  
-- 120, 
-- 'brush', 
-- 'NULL', 
-- 'NULL', 
-- 'Fine', 
-- 'detail', 
-- 'features'),


-- ('./images/brushes/brush3.PNG', 
-- 'Ivory Fine Shaving Brush',  
-- 120, 
-- 'brush', 
-- 'NULL', 
-- 'NULL', 
-- 'Fine', 
-- 'detail', 
-- 'features'),


-- ('./images/brushes/brush4.PNG', 
-- 'Horn Fine Shaving Brush',  
-- 185, 
-- 'brush', 
-- 'NULL', 
-- 'NULL', 
-- 'Fine', 
-- 'detail', 
-- 'features'),


-- ('./images/brushes/brush5.PNG', 
-- 'Rose Gold Fine Shaving Brush',  
-- 175, 
-- 'brush', 
-- 'NULL', 
-- 'NULL', 
-- 'Fine', 
-- 'detail', 
-- 'features'),


-- ('./images/brushes/brush6.PNG', 
-- 'Chelsea Collection Shaving Brush',  
-- 175, 
-- 'brush', 
-- 'NULL', 
-- 'NULL', 
-- 'Fine', 
-- 'detail', 
-- 'features'),


-- ('./images/brushes/brush7.PNG', 
-- 'Power Shave Collection Fine Shaving Brush',  
-- 175, 
-- 'brush', 
-- 'NULL', 
-- 'NULL', 
-- 'Fine', 
-- 'detail', 
-- 'features'),


-- ('./images/brushes/brush8.PNG', 
-- 'Fusion® Chrome Collection Fine Shaving Brush',  
-- 160, 
-- 'brush', 
-- 'NULL', 
-- 'NULL', 
-- 'Fine', 
-- 'The Chrome Collection Fine Shaving Brush is an essential key to achieving The Perfect Shave®. Elegantly handcrafted in polished chrome, this
-- stylish brush features a micro-textured surface that enhances grip. This shaving brush generates a rich warm lather by retaining warm water to
-- help soften the beard hair. Using a shaving brush to apply your shaving cream helps lift beard hair for a clean, close shave. A shaving brush
-- also lightly exfoliates skin to help release trapped hairs.', 
-- 'Fine Badger Hair handmade by an artisan, featuring soft white tips
-- Has greater hair density than a pure shaving brush
-- Chrome plated over aluminum alloy, micro-textured handle')


-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


