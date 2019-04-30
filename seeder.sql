USE adlister_db;

INSERT INTO users (username, email, password)
VALUES ("Marcus", "Marcus@email", "$2a$10$p03kmVbFAo.2m5mC9ruO2Os9SabucNAmreUqXsuQsx/.YevClu3j6"),
       ("Sabita", "Sabita@email", "$2a$10$6vZX5nduWXS8mBDceWRbK.YDSgr3V5yoRc5EXgnBW5/CAwSCJVEyC"),
       ("Megan", "Megan@email", "$2a$10$C1eVX1XFQj3dbjyV75PHee7EFesyWfwe09cp7gaE3ONRSfIMraeOq"),
       ("Arash", "Arash@email", "$2a$10$Y23455IIGYBLDAcChUwAteG938tWDTN1dqYD4H2KCJiUMtYIy.Cuq"),
       ("Anwar", "Anwar@email", "$2a$10$i8CU2p7FYp35q3f..XMoI.wWsmOxzWQOxfvliMae7AugWjgvbMm8m");



INSERT INTO ads (user_id, title, description, image, price)
VALUES (1, "TV for Sale",
        "I am trying to sell a 42 inch TV, for the extra cash.
         It still works perfectly fine, its a Sony and is 4k. I'm kind
         of thirsty.
         Contact me at 123-456-7890", "https://cdn.arstechnica.net/wp-content/uploads/2014/10/broken-tv-640x425.jpg", "2 Bottles of Water"),
       (4, "Classic VHS Tapes",
        "I have every Disney movie ever made on VHS. I love all
        of them but my VCR was destroyed in the atomic blasts,
        so now I would rather have a lighter than these movies.
        Contact me at 123-456-7890", "https://www.snopes.com/tachyon/2016/06/If-You-Have-ANY-Of-These-VHS%E2%80%99s-It-May-Be-Worth-OVER-10000.jpg?resize=780,452", "Lighter"),
       (3, "3 Unused Truck Tires",
        "Looking to trade my 3 unused tires for at least 8 bottles
        of water. The water would need to be purified of course
        but I am willing to take 14-15 bottles of unpurified water too.
        Contact me at 123-456-7890", "https://img.letgo.com/images/16/9e/9c/75/169e9c750873b87bb643591b90444286.jpeg?impolicy=img_600", "8 Bottles of Water"),
       (2, "Samsung Galaxy S19",
        "I have a Galaxy S19 that I want to trade for an I-XX.  I prefer the
        S19 over Apple, but ever since the last atomic blast the reception
        on my S19 hasn't been too good. If you are willing to trade understand
        that the phone is in perfect working condition but I think a
        cell tower was destroyed in the last blast.
        Contact me at 123-456-7890", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXwbL679ZYZbYnVtpx83xBnuE1FnrHVgXZv4E9i8TGsoIJjfKCiQ", "An Iphone XX"),
       (3, "Universal TV Remote",
        "In dire need of 2 AA Batteries, my water purifier runs on them.
        I don't have much of any value except for my universal remote.
        It can be programmed to work with anything that takes a remote ... I think.
        I lost the instruction booklet a while back so I'm not too sure how
        to use it. Anyways, I really really really need 2 AA batteries.
        Contact me at 123-456-7890", "https://www.bigbuttons.com.au/media/catalog/product/cache/11/image/650x/040ec09b1e35df139433887a97daa66f/e/4/e450_.jpg", "2 AA Batteries"),
       (2, "2 Dogs, Husky and Boxer",
        "I really love my dogs but my hands are really cold. My dogs really
        need a forever home and I'm afraid they are going to eat me in my sleep
        one of these nights, they are looking more and more hungry.
        The husky is a cuddler and the boxer is .... well, not nice at all.
        Give me a pair of gloves please.
        Contact me at 123-456-7890", "https://i.imgur.com/8vwa0y4.jpg", "A pair of gloves"),
       (1, "2032 Volkswagen Passat",
        "My registration is about to expire within the next 30 days. I don't
        have enough money to renew it. I need something to get me from
        point A to point B.  Would be beneficial if the bicycle came with
        pedals big enough for a size 18.
        Contact me at 123-456-7890", "https://www.beverlyhillscarclub.com/galleria_images/9356/9356_main_f.jpg", "A Bicycle"),
       (4, "Barely Used Microwave",
        "I have been trying to eliminate all forms of radiation from my diet,
        people say that microwaves are safe but do we really know that??!?
        Either way, I have 3 extra microwaves so if you have more than
        4 bottles of water I'm willing to trade more than 1 microwave.
        Contact me at 123-456-7890", "https://qph.fs.quoracdn.net/main-qimg-cde47a96cfddb67caff242dc7ddd00f3.webp", "4 Bottles of Water"),
       (5, "Set of Silverware",
        "I eat with  my hands now and don't need the silverware anymore. I need
        the toothpicks because I've had a popcorn kernel stuck in my teeth for
        a few weeks now. Prefer them to be unused but understand that we
        live in a post-apocalyptic wasteland so ... beggars can't be choosers.
        Contact me at 123-456-7890", "http://images.party411.com/prodimages/detail/194959_detail.jpg", "Toothpicks"),
       (2, "Complete DVD set of The Office",
        "I've seen The Office beginning to end at least 2 or 3 hundred times now.
        I can quote every line as its happening and I don't find the show entertaining
        anymore. When I sleep I dream whole episodes and I think I'm losing my
        mind. Anywho I've been thinking of buying a car lately and am willing to trade
        The Office for any car, or anything really. Please help Me.
        Contact me at 123-456-7890", "https://i.ebayimg.com/00/s/ODAwWDYwMA==/z/ehwAAOSwZ2pcewwh/$_35.JPG", "Working Automobile"),
       (5, "Box of Cheerios, half eaten",
        "I've lived in the wasteland a long time, and I've never seen any packaged
        food that wasn't expired. Well, guess what? This box of cheerios isn't expired.
        Its half eaten because I have been savioring every cheerio for the last ....
        well I guess for as long as I can remember, its a family heirloom.  I think the
        expiration date was a typo because I've had this box for a over 10 years now.
        Either way they are tasty, and I need 30 Gallons of Gas.
        Contact me at 123-456-7890", "https://www.familyfreshmeals.com/wp-content/uploads/2017/08/Froot-Loops-Waffles-Step-1.jpg", "30 Gallons of Gas, Unleaded"),
       (3, "Scented Candles, various scents",
        "Buy these scented candles from me.  Not only do you get a source of fire and heat,
         but you will also be transported back to simpler times with all the
         beautiful scents that I have.  I have 30 candles in total, I have 22 Summer Daisy scents,
          7 Pumpkin Spices, and 1 candle labeled 'Positivity'.
          Contact me at 123-456-7890", "https://s.abcnews.com/images/US/dynamite-gty-jpo-180907_hpMain_12x5_992.jpg", "1 Cup of Rice"),
       (4, "Brand New Chair, Slightly Damaged",
        "I recently made a chair out of wood that I found laying around. I have only
         used it a handful of times. The front legs are moveable. Very comfortable
         the cushion is very soft. If you are in need of a chair I URGE you to look
          no further. I want to trade it for a different chair please.
          Contact me at 123-456-7890", "https://newbloggycat.files.wordpress.com/2015/11/broken-chair.jpg?w=530", "1 Brand New Chair"),
       (2, "Very Cool Bicycle",
        "I want to trade my really very cool bicycle for some water or food. I am
        willing to negotiate but I also think that I'm not going to make it too much longer
        without food or water. Help Me Please.
          Contact me at 123-456-7890", "https://cdn.shopify.com/s/files/1/1597/9875/products/phantom-bikes-vision-pedal-assist-throttle-vintage-electric-bike-cruiser-phantom-gloss-black_3f479c3b-e551-44db-aec0-ee2dcbc5d53c_2000x.jpg?v=1543004690", "Food or Water");

