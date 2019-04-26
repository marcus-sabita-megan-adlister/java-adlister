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
         Contact me at 123-456-7890", "../default.jpg", "2 Bottles of Water"),
       (4, "Classic VHS Tapes",
        "I have every Disney movie ever made on VHS. I love all
        of them but my VCR was destroyed in the atomic blasts,
        so now I would rather have a lighter than these movies.
        Contact me at 123-456-7890", "../default.jpg", "Lighter"),
       (3, "3 Unused Truck Tires",
        "Looking to trade my 3 unused tires for at least 8 bottles
        of water. The water would need to be purified of course
        but I am willing to take 14-15 bottles of unpurified water too.
        Contact me at 123-456-7890", "../default.jpg", "8 Bottles of Water"),
       (2, "Samsung Galaxy S19",
        "I have a Galaxy S19 that I want to trade for an I-XX.  I prefer the
        S19 over Apple, but ever since the last atomic blast the reception
        on my S19 hasn't been too good. If you are willing to trade understand
        that the phone is in perfect working condition but I think a
        cell tower was destroyed in the last blast.
        Contact me at 123-456-7890", "../default.jpg", "An Iphone XX"),
       (3, "Universal TV Remote",
        "In dire need of 2 AA Batteries, my water purifier runs on them.
        I don't have much of any value except for my universal remote.
        It can be programmed to work with anything that takes a remote ... I think.
        I lost the instruction booklet a while back so I'm not too sure how
        to use it. Anyways, I really really really need 2 AA batteries.
        Contact me at 123-456-7890", "../default.jpg", "2 AA Batteries"),
       (2, "2 Dogs, Husky and Boxer",
        "I really love my dogs but my hands are really cold. My dogs really
        need a forever home and I'm afraid they are going to eat me in my sleep
        one of these nights, they are looking more and more hungry.
        The husky is a cuddler and the boxer is .... well, not nice at all.
        Give me a pair of gloves please.
        Contact me at 123-456-7890", "../default.jpg", "A pair of gloves"),
       (1, "2032 Volkswagen Passat",
        "My registration is about to expire within the next 30 days. I don't
        have enough money to renew it. I need something to get me from
        point A to point B.  Would be beneficial if the bicycle came with
        pedals big enough for a size 18.
        Contact me at 123-456-7890", "../default.jpg", "A Bicycle"),
       (4, "Barely Used Microwave",
        "I have been trying to eliminate all forms of radiation from my diet,
        people say that microwaves are safe but do we really know that??!?
        Either way, I have 3 extra microwaves so if you have more than
        4 bottles of water I'm willing to trade more than 1 microwave.
        Contact me at 123-456-7890", "../default.jpg", "4 Bottles of Water"),
       (5, "Set of Silverware",
        "I eat with  my hands now and don't need the silverware anymore. I need
        the toothpicks because I've had a popcorn kernel stuck in my teeth for
        a few weeks now. Prefer them to be unused but understand that we
        live in a post-apocalyptic wasteland so ... beggars can't be choosers.
        Contact me at 123-456-7890", "../default.jpg", "Toothpicks"),
       (2, "Complete DVD set of The Office",
        "I've seen The Office beginning to end at least 2 or 3 hundred times now.
        I can quote every line as its happening and I don't find the show entertaining
        anymore. When I sleep I dream whole episodes and I think I'm losing my
        mind. Anywho I've been thinking of buying a car lately and am willing to trade
        The Office for any car, or anything really. Please help Me.
        Contact me at 123-456-7890", "../default.jpg", "Working Automobile"),
       (5, "Box of Cheerios, half eaten",
        "I've lived in the wasteland a long time, and I've never seen any packaged
        food that wasn't expired. Well, guess what? This box of cheerios isn't expired.
        Its half eaten because I have been savioring every cheerio for the last ....
        well I guess for as long as I can remember, its a family heirloom.  I think the
        expiration date was a typo because I've had this box for a over 10 years now.
        Either way they are tasty, and I need 30 Gallons of Gas.
        Contact me at 123-456-7890", "../default.jpg", "30 Gallons of Gas, Unleaded"),
       (3, "Scented Candles, various scents",
        "Buy these scented candles from me.  Not only do you get a source of fire and heat,
         but you will also be transported back to simpler times with all the
         beautiful scents that I have.  I have 30 candles in total, I have 22 Summer Daisy scents,
          7 Pumpkin Spices, and 1 candle labeled 'Positivity'.
          Contact me at 123-456-7890", "../default.jpg", "1 Cup of Rice");