import 'package:flavor_finder/models/recipe.dart';

Map<String, Recipe> recipes = {
  'burger': Recipe(
    name: "Burger",
    image:
        "https://www.allrecipes.com/thmb/8fe_5pLNz2eHcpknNhL52fdq5hE=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/25473-the-perfect-basic-burger-DDMFS-4x3-56eaba3833fd4a26a82755bcd0be0c54.jpg",
    diet: "Veg/Non-Veg",
    course: "Main Course",
    time: 30,
    ingredients:
        "Burger Buns, Patty (Veg/Non-Veg), Cheese (optional), Lettuce, Tomato, Onion, Pickles, Sauce (Mayonnaise, Ketchup, Mustard)",
    instructions:
        "1. Toast burger buns lightly. Cook your chosen patty (veg or non-veg).\n2. Assemble the burger by layering patty, cheese (optional), lettuce, tomato, onion, pickles and sauce on the bottom bun. Cover with the top bun and serve.",
  ),
  'chakli': Recipe(
    name: "Chakli",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Chakli_in_a_bowl.jpg/1200px-Chakli_in_a_bowl.jpg",
    diet: "Veg",
    course: "Snack",
    time: 60,
    ingredients:
        "Rice Flour, Gram Flour (Besan), Sesame Seeds, Cumin Seeds, Red Chilli Powder, Turmeric Powder, Oil, Salt, Water",
    instructions:
        "1. In a bowl, combine rice flour, gram flour, sesame seeds, cumin seeds, red chilli powder, turmeric powder and salt.\n2. Heat oil in a pan. Add a spoonful of hot oil to the flour mixture and mix well.\n3. Add water gradually and knead into a stiff dough. \n4. Use a chakli press or mold to shape the dough into spiral shapes. Deep fry in hot oil until golden and crispy. Drain on paper towels and enjoy as a snack.",
  ),
  'cheese_cakes': Recipe(
    name: "Cheese Cakes",
    image:
        "https://www.onceuponachef.com/images/2017/12/cheesecake-1200x1393.jpg",
    diet: "Veg",
    course: "Dessert",
    time: 90,
    ingredients:
        "Cream Cheese, Sugar, Eggs, Sour Cream, Vanilla Extract, Graham Cracker Crumbs, Butter, Toppings (Fruit, Chocolate Sauce)",
    instructions:
        "1. Preheat oven to desired temperature. Make the crust by combining graham cracker crumbs and melted butter. Press into the bottom of a springform pan.\n2. Beat together cream cheese and sugar until smooth. Add eggs one at a time, then stir in sour cream and vanilla extract. Pour over the crust.\n3. Bake in the preheated oven until set around the edges. Let cool completely before adding toppings.",
  ),
  'chole_bhature': Recipe(
    name: "Chole Bhature",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSboYpGx3M1QjFM0hvTUiKAO-xVQwh8h2QsIVR0fvnOQQ&s",
    diet: "Veg",
    course: "Main Course",
    time: 90,
    ingredients:
        "Chickpeas, Onions, Tomatoes, Ginger-Garlic Paste, Green Chillies, Spices (Cumin, Coriander, Turmeric, Red Chilli Powder, Garam Masala), All Purpose Flour, Yogurt, Baking Soda, Oil, Salt, Coriander Leaves",
    instructions:
        "1. Soak chickpeas overnight. Pressure cook with salt and baking soda. \n2. Prepare the chole by sauteeing onions, tomatoes, ginger-garlic paste, green chillies and spices. Add the cooked chickpeas and simmer.\n3. For the bhature, knead a dough with all purpose flour, yogurt, baking soda, oil and salt. Let it rise.\n4. Roll out large puris and deep fry until puffed up and golden. Serve hot with chole, onion rings and lemon wedges.",
  ),
  'cookies': Recipe(
    name: "Cookies",
    image:
        "https://bakewithshivesh.com/wp-content/uploads/2020/09/IMG-8129-1-scaled.jpg",
    diet: "Veg",
    course: "Dessert",
    time: 45,
    ingredients:
        "Butter, Sugar, Eggs, All Purpose Flour, Baking Soda, Salt, Vanilla Extract, Chocolate Chips, Nuts (optional)",
    instructions:
        "1. Preheat oven to desired temperature. Cream together butter and sugar until light and fluffy.\n2. Beat in eggs one at a time, then stir in vanilla extract.\n3. In a separate bowl, whisk together all purpose flour, baking soda and salt. Gradually add to the wet ingredients, mixing until just combined.\n4. Stir in chocolate chips and nuts (optional).\n5. Drop by rounded tablespoons onto ungreased baking sheets and bake until golden brown.",
  ),
  'fafta': Recipe(
    name: "Fafda",
    image: "https://laxmibhog.com//cdn/recipes/Fafda.jpg",
    diet: "Veg",
    course: "Snack",
    time: 90,
    ingredients:
        "Gram Flour (Besan), Baking Soda, Turmeric Powder, Green Chilies, Papaya Paste (optional), Oil, Salt, Water",
    instructions:
        "1. In a bowl, combine gram flour, baking soda, turmeric powder, finely chopped green chilies, papaya paste (optional) and salt.\n2. Add water gradually and knead into a smooth and elastic dough. \n3. Divide the dough into small portions. Roll each portion into a thin rectangular sheet. Make diagonal cuts on the sheet.\n4. Heat oil in a pan. Carefully slide the fafda sheets into the hot oil and deep fry until crispy and golden brown. Drain on paper towels and serve hot with chutney and fried green chilies.",
  ),
  'french_fries': Recipe(
    name: "French Fries",
    image:
        "https://www.kuchpakrahahai.in/wp-content/uploads/2023/05/Air-fried-french-fries.jpg",
    diet: "Veg",
    course: "Snack",
    time: 30,
    ingredients: "Potatoes, Oil for deep frying, Salt",
    instructions:
        "1. Peel and cut potatoes into french fry shapes. Soak in cold water for 30 minutes.\n2. Heat oil in a deep fryer. Pat the potatoes dry and fry in batches until golden brown and crispy.\n3. Drain on paper towels and sprinkle with salt. Serve hot with your favourite dipping sauce.",
  ),
  'gobi_manchurian': Recipe(
    name: "Gobi Manchurian",
    image:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/02/gobi-manchurian-cauliflower-manchurian.jpg",
    diet: "Veg",
    course: "Appetizer",
    time: 45,
    ingredients:
        "Cauliflower, Cornflour, All Purpose Flour, Soy Sauce, Vinegar, Ginger Garlic Paste, Green Chilies, Spring Onions, Salt, Sugar, Oil",
    instructions:
        "1. Cut cauliflower into florets. Make a batter with cornflour, all purpose flour, salt and water. Dip cauliflower florets in the batter and deep fry until golden brown.\n2. In a separate pan, heat oil and saute ginger garlic paste, green chilies and spring onions. Add soy sauce, vinegar, salt and sugar. \n3. Add fried cauliflower florets to the sauce and toss to coat. Serve hot garnished with spring onions.",
  ),
  'golgappa': Recipe(
    name: "Gol Gappa",
    image:
        "https://static.toiimg.com/thumb/53739648.cms?imgsize=115082&width=800&height=800",
    diet: "Veg",
    course: "Snack",
    time: 60,
    ingredients:
        "Semolina, All Purpose Flour, Water, Oil, Potatoes, Chickpeas, Tamarind Chutney, Mint Chutney, Spices (Cumin Powder, Chaat Masala, Red Chilli Powder), Sev, Coriander Leaves",
    instructions:
        "1. Knead a dough with semolina, all purpose flour, water and oil. Let it rest.\n2. Divide the dough into small balls and roll them into thin puris. Deep fry until crispy.\n3. Prepare the fillings with boiled potatoes, mashed chickpeas, tamarind chutney, mint chutney, spices and sev.\n4. Make a small hole in each puri and fill with the potato-chickpea mixture. Dip in the chutneys and enjoy immediately.",
  ),
  'gulab_jamun': Recipe(
    name: "Gulab Jamun",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzKH67IMZdi3utvkkubh2JbVjMiQCbql0Qg5ki8wdHMA&s",
    diet: "Veg",
    course: "Dessert",
    time: 45,
    ingredients:
        "Milk solids (khoya), Sugar, Water, Green Cardamom Pods, Rose Water, Oil/Ghee for frying",
    instructions:
        "1. Knead the khoya until smooth. Divide into small balls.\n2. Make sugar syrup by dissolving sugar in water. Add cardamom pods and rose water.\n3. Heat oil/ghee and fry the balls on low heat until golden brown.\n4. Soak the fried balls in the sugar syrup for at least 2 hours before serving.",
  ),
  'jilebi': Recipe(
    name: "Jalebi",
    image: "https://static.toiimg.com/photo/53099699.cms",
    diet: "Veg",
    course: "Dessert",
    time: 60,
    ingredients:
        "All Purpose Flour, Yogurt, Sugar, Water, Saffron Strands, Cardamom Pods, Oil/Ghee for frying",
    instructions:
        "1. Prepare jalebi batter by mixing all purpose flour and yogurt. Let it ferment for few hours.\n2. Make sugar syrup by dissolving sugar in water. Add saffron strands and cardamom pods. \n3. Pour batter into a piping bag with a small nozzle. Heat oil/ghee in a pan and pipe swirls of batter into the hot oil.\n4. Fry until golden and crispy. Dip hot jalebis in the sugar syrup and serve.",
  ),
  'ladoo': Recipe(
    name: "Laddoo",
    image:
        "https://m.economictimes.com/thumb/msid-60170732,width-1200,height-900,resizemode-4,imgsize-72679/if-modaks-arent-your-go-to-dessert-on-ganesh-chaturthi-try-this-motichoor-laddoo-recipe.jpg",
    diet: "Veg",
    course: "Dessert",
    time: 30,
    ingredients:
        "Gram Flour (Besan), Sugar, Ghee, Cardamom Powder, Nuts (Almonds, Cashews)",
    instructions:
        "1. Roast gram flour in ghee until fragrant and golden brown. Add sugar and cardamom powder. Mix well.\n2. Remove from heat and let it cool slightly. Grease your palms with ghee and shape the mixture into small balls or laddoos.\n3. Garnish with chopped nuts and serve.",
  ),
  'masala_dosa': Recipe(
    name: "Masala Dosa",
    image:
        "https://i.pinimg.com/originals/e8/dc/7f/e8dc7f0b59b8602ba30621dee3c6291c.jpg",
    diet: "Veg",
    course: "Breakfast",
    time: 30,
    ingredients:
        "Rice, Urad Dal, Potato, Onion, Curry Leaves, Mustard Seeds, Chana Dal, Green Chilies, Ginger, Coriander Leaves, Oil, Salt",
    instructions:
        "1. Soak rice and urad dal separately for 4-5 hours. Grind into a smooth batter. Ferment overnight.\n2. Prepare potato masala by sauteing onions, curry leaves, mustard seeds, chana dal, green chilies, ginger and mashed boiled potato. Add salt and coriander leaves.\n3. Heat a dosa tawa and pour a ladleful of batter. Spread it in a circular motion. Drizzle oil around the edges.\n4. Once cooked, flip the dosa and add a spoonful of potato masala. Fold and serve hot with chutney and sambar.",
  ),
  'milkshake': Recipe(
    name: "Milkshakes",
    image:
        "https://www.dessertfortwo.com/wp-content/uploads/2022/08/How-to-Make-a-Milkshake-11-735x1103.jpg",
    diet: "Veg",
    course: "Beverage",
    time: 10,
    ingredients:
        "Milk, Ice Cream, Sugar (optional), Flavouring (Chocolate Syrup, Fruits, Nuts)",
    instructions:
        "1. In a blender, combine milk, ice cream, sugar (optional) and your chosen flavouring.\n2. Blend until smooth and frothy. Pour into glasses and enjoy chilled.",
  ),
  'mysore_pak': Recipe(
    name: "Mysore Pak",
    image:
        "https://www.anandsweets.in/cdn/shop/products/SugarfreeMysorePak.png?v=1702379353&width=1946",
    diet: "Veg",
    course: "Dessert",
    time: 30,
    ingredients: "Gram Flour (Besan), Sugar, Ghee, Cardamom Powder",
    instructions:
        "1. Grease a plate or tray and keep it aside.\n2. In a pan, heat ghee. Add gram flour and roast on low heat until fragrant and golden brown.\n3. In a separate pan, make sugar syrup by dissolving sugar in water. The syrup should be of one string consistency.\n4. Slowly add the hot sugar syrup to the roasted gram flour while continuously stirring. \n5. Add cardamom powder and continue stirring until the mixture thickens and leaves the sides of the pan. Pour onto the greased plate and let it set. Cut into squares and serve.",
  ),
  'noodles': Recipe(
    name: "Noodles",
    image:
        "https://tiffycooks.com/wp-content/uploads/2021/09/Screen-Shot-2021-09-21-at-5.21.37-PM.png",
    diet: "Veg/Non-Veg",
    course: "Main Course",
    time: 25,
    ingredients:
        "Noodles, Water, Oil, Soy Sauce, Vegetables (Onions, Carrots, Cabbage, Peppers), Ginger Garlic Paste, Salt, Pepper, Vinegar (optional), Chilli Sauce (optional)",
    instructions:
        "1. Cook noodles according to package directions.\n2. Heat oil in a wok or pan. Saute ginger garlic paste and add vegetables. Stir fry until cooked.\n3. Add cooked noodles, soy sauce, salt, pepper, vinegar (optional) and chili sauce (optional). Toss well to combine. Serve hot.",
  ),
  'pancakes': Recipe(
    name: "Pancakes",
    image:
        "https://www.allrecipes.com/thmb/WqWggh6NwG-r8PoeA3OfW908FUY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/21014-Good-old-Fashioned-Pancakes-mfs_001-1fa26bcdedc345f182537d95b6cf92d8.jpg",
    diet: "Veg",
    course: "Breakfast",
    time: 20,
    ingredients:
        "All Purpose Flour, Baking Powder, Sugar, Salt, Milk, Eggs, Butter",
    instructions:
        "1. Whisk together all purpose flour, baking powder, sugar and salt.\n2. In another bowl, whisk together milk, eggs and melted butter.\n3. Add the wet ingredients to the dry ingredients and mix until just combined. Do not overmix.\n4. Heat a lightly oiled griddle or pan over medium heat. Pour 1/4 cup of batter for each pancake.\n5. Cook for 2-3 minutes per side, or until golden brown. Serve hot with your favourite toppings.",
  ),
  'panner_butter_masala': Recipe(
    name: "Paneer Butter Masala",
    image:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2021/07/paneer-butter-masala.jpg.webp",
    diet: "Veg",
    course: "Main Course",
    time: 30,
    ingredients:
        "Paneer, Butter, Oil, Cinnamon, Cloves, Cardamom, Bay Leaf, Onions, Ginger Garlic Paste, Green Chilies, Tomatoes, Turmeric, Red Chilli Powder, Coriander Powder, Garam Masala, Kasuri Methi, Cream, Coriander Leaves",
    instructions:
        "1. Heat oil and butter in a pan. Add whole spices and saute for a minute.\n2. Add onions and fry until they turn golden.\n3. Add ginger garlic paste, green chilies and saute for 2 minutes.\n4. Add tomatoes, salt, turmeric, red chili powder, coriander powder and garam masala. Saute until the tomatoes turn soft.\n5. Cool this and blend to a smooth puree.\n6. Pour this back to the pan and cook until the masala smells good.\n7. Add paneer, kasuri methi and cream. Mix well and cook for 2 minutes.\n8. Garnish with coriander leaves and serve paneer butter masala.",
  ),
  'panner_tikka': Recipe(
    name: "Paneer Tikka",
    image:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/08/paneer-tikka-recipe-tandoori-paneer-tikka-500x500.jpg",
    diet: "Veg",
    course: "Appetizer",
    time: 45,
    ingredients:
        "Paneer, Yogurt, Bell Peppers (Red, Yellow, Green), Onion, Ginger Garlic Paste, Lemon Juice, Turmeric Powder, Red Chilli Powder, Garam Masala, Coriander Powder, Kasuri Methi, Oil",
    instructions:
        "1. Cut paneer and bell peppers into cubes. Marinate with yogurt, ginger garlic paste, lemon juice, turmeric powder, red chili powder, garam masala, coriander powder, kasuri methi, salt and oil. Let it marinate for at least 30 minutes.\n2. Thread marinated paneer, bell peppers and onion pieces onto skewers. \n3. Grill or cook in a preheated oven until lightly charred and cooked through. Serve hot with mint chutney and onion rings.",
  ),
  'pasta': Recipe(
    name: "Pasta",
    image:
        "https://www.budgetbytes.com/wp-content/uploads/2017/07/Lighter-Spinach-Alfredo-Pasta-finished-500x500.jpg",
    diet: "Veg/Non-Veg",
    course: "Main Course",
    time: 30,
    ingredients:
        "Pasta, Water, Salt, Oil/Butter, Garlic, Onions, Vegetables (optional), Tomato Puree, Herbs (Oregano, Basil), Cheese (Parmesan, Cheddar), Cream (optional)",
    instructions:
        "1. Cook pasta according to package directions.\n2. In a pan, saute garlic and onions in oil/butter. Add vegetables if desired.\n3. Stir in tomato puree, herbs, salt and pepper. Simmer for a few minutes.\n4. Add cooked pasta to the sauce and toss to coat. Add cheese and cream (optional) and mix well. Serve hot.",
  ),
  'pav_bhaji': Recipe(
    name: "Pav Bhaji",
    image:
        "https://www.cookwithmanali.com/wp-content/uploads/2018/05/Best-Pav-Bhaji-Recipe.jpg",
    diet: "Veg",
    course: "Main Course",
    time: 45,
    ingredients:
        "Pav (Dinner Rolls), Potatoes, Cauliflower, Green Peas, Tomatoes, Onions, Ginger Garlic Paste, Green Chilies, Pav Bhaji Masala, Butter, Coriander Leaves",
    instructions:
        "1. Boil potatoes, cauliflower and green peas. Mash them coarsely. \n2. In a pan, saute onions, ginger garlic paste and green chilies. Add chopped tomatoes and cook until soft.\n3. Add mashed vegetables, pav bhaji masala and salt. Cook for few minutes.\n4. Serve hot with buttered and toasted pav, chopped onions and lemon wedges.",
  ),
  'pizza': Recipe(
    name: "Pizza",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/9/91/Pizza-3007395.jpg",
    diet: "Veg/Non-Veg",
    course: "Main Course",
    time: 45,
    ingredients:
        "Pizza Dough, Pizza Sauce, Cheese (Mozzarella), Toppings (Vegetables, Meats, etc.)",
    instructions:
        "1. Preheat oven to desired temperature. Prepare your chosen pizza dough.\n2. Spread pizza sauce evenly over the dough. Sprinkle with cheese and add your desired toppings.\n3. Bake in the preheated oven until the crust is golden brown and the cheese is melted and bubbly.",
  ),
  'sushi': Recipe(
    name: "Sushi",
    image: "https://cdn.britannica.com/52/128652-050-14AD19CA/Maki-zushi.jpg",
    diet: "Veg/Non-Veg",
    course: "Appetizer",
    time: 60,
    ingredients:
        "Sushi Rice, Nori (Seaweed Sheets), Sushi Vinegar, Fillings (Fish, Seafood, Vegetables, Avocado), Soy Sauce, Wasabi, Pickled Ginger",
    instructions:
        "1. Rinse and cook sushi rice. Season with sushi vinegar.\n2. Lay a sheet of nori on a sushi mat. Spread a thin layer of rice over the nori.\n3. Arrange your chosen fillings over the rice.\n4. Using the mat, roll the sushi tightly. Cut into pieces and serve with soy sauce, wasabi and pickled ginger.",
  ),
  'tacos': Recipe(
    name: "Tacos",
    image:
        "https://www.allrecipes.com/thmb/qWvc3DAtgp4sVE40nPKQiTW0OoI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/70935-taqueria-style-tacos-mfs-1x2-40-691efd4df7f14cdd8280ca9d7a62692e.jpg",
    diet: "Veg/Non-Veg",
    course: "Main Course",
    time: 30,
    ingredients:
        "Tortillas, Filling (Meat, Seafood, Beans, Vegetables), Toppings (Salsa, Onions, Cilantro, Lime Wedges)",
    instructions:
        "1. Prepare your chosen filling. Warm the tortillas.\n2. Fill the tortillas with the chosen filling and top with desired toppings.\n3. Serve immediately.",
  ),
  'veg_biriyani': Recipe(
    name: "Veg Biryani",
    image:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2019/04/veg-biryani-recipe-300x225.jpg.webp",
    diet: "Veg",
    course: "Main Course",
    time: 60,
    ingredients:
        "Basmati Rice, Water, Salt, Oil, Bay Leaf, Cinnamon, Cloves, Cardamom, Star Anise, Shah Jeera, Ginger Garlic Paste, Green Chilies, Mint Leaves, Coriander Leaves, Onions, Tomatoes, Turmeric, Red Chilli Powder, Garam Masala, Curd, Carrots, Beans, Potatoes, Cauliflower, Green Peas, Lemon Juice, Saffron, Milk, Ghee, Coriander Leaves, Mint Leaves, Fried Onions",
    instructions:
        "1. Wash and soak basmati rice for 30 minutes. Drain and set aside.\n2. Heat oil in a heavy bottom pot or pressure cooker. Add whole spices and saute for a minute.\n3. Add ginger garlic paste, green chilies, mint and coriander leaves. Saute for 2 minutes.\n4. Add onions and fry until they turn golden.\n5. Add tomatoes, salt, turmeric, red chili powder, garam masala and curd. Saute until the tomatoes turn soft and the masala smells good.\n6. Add all the veggies and saute for 2 to 3 minutes.\n7. Pour water and bring it to a boil. Taste the water and adjust salt.\n8. Add drained rice and cook until the rice is 70% cooked.\n9. Add saffron soaked in milk, ghee, coriander and mint leaves.\n10. Cover the pot with a moist cloth and a tight lid. Dum cook on a low flame for 15 minutes.\n11. Serve veg biryani with raita.",
  ),
};
