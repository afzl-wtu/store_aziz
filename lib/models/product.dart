import 'category.dart';

class Product {
  final String title;
  final String id;
  final String description;
  final Category category;
  final List<String> images;
  final int price;
  final String? brand;

  Product({
    required this.title,
    required this.id,
    required this.category,
    required this.images,
    required this.price,
    required this.description,
    this.brand,
  });

  // Product copy() => Product(
  //     title: title,
  //     id: id,
  //     category: category,
  //     images: images,
  //     price: price,
  //     description: description);
}

final List<Product> products = [
  Product(
      title:
          '213pcs Steel Block Toys Kids Car Toys SUV Power Vehicles Baby Boys Super Car For Children Gift Toys (SUV)',
      id: '1',
      category: Category.baby,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/02-16.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/01-17.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/03-16.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/06-13.jpg',
      ],
      price: 25,
      description:
          'Reminding Information Packaging Protective Packaging To ensure that the product is in the best condition when you receive it, We will choose the best packaging method (Boxes or Waterproof bubble bag) according to different products. Shipping Fast Delivery Please kindly know that we will try our best to choose the fastest shipping method for you, and you can check the shipping information of your parcel at www.17track.net Sometimes your parcel will be delayed by force majeure or your local customs, but it will arrive eventually, so please do not worry. If you have any problem with shipping, please contact us at first, we will try our best to solve your problem. Contact Us Work Time From Monday to Saturday Beijing time: 9:00-18:00 Pacific time: 18:00-3:00 Moscow time: 4:00-13:00 London time: 1:00-10:00 Any question about our product or shipping, please feel free to contact us. You can leave messages beyond the working time, we will reply with 24 hours. Follow Us Follow our store to get more information of new product and discount You can find the Follow button on the front page of our store, and it is under the search box, click it and you will follow our store, we will show you the latest interesting products and preferential information. Feedback 5 Star Feedback We looking forward to providing you with the best shopping experience on AliExpress! If you are unsatisfied with any aspect of our products or service, please contact us first and we will try our best to solve your problem. If you are satisfied with our product and service, please give us 5 Stars and leave positive feedback on our products and service. It only takes a moment, but it’s a great way to help others make purchases like yours!'),
  Product(
      title:
          'Aveeno Baby Calming Comfort Bath & Lotion Set, Baby Skin Care Products with Natural Oat Extract, Lavender & Vanilla, 2 Items',
      id: '2',
      category: Category.baby,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41N3dGH4PRL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/513SEAiWTkL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51G-6CjEq4L._AC_.jpg',
      ],
      price: 14,
      description: '''

Aveeno Baby Calming Comfort Bath & Lotion Set uses gentle bath time formulas to help calm baby before bed. This convenient baby bath set includes Calming Comfort Bath and Calming Comfort Lotion, both designed for baby’s dry, sensitive, delicate skin. The rich, lathering cleanser is tear-free and soap-free. Formulated with natural Oat Extract, it helps retain moisture and soothe skin, leaving it feeling clean, soft, and healthy. This calming baby bath is also clinically shown to soothe and comfort your fussy baby before bed with its soothing lavender and vanilla scents. Clinical studies show that massage calms babies, improving overall well-being so after a bath, the Calming Comfort Lotion can be used to help babies relax before bedtime, naptime, or anytime they’re a bit fussy. Combined with moisture-rich, natural oatmeal and dimethicone skin protectant, this non-greasy formula helps protect baby’s skin, leaving it feeling soft, smooth, and healthy. The fast-absorbing, hypoallergenic formula is paraben- and phthalate-free, so it’s gentle enough for baby’s sensitive skin.

This baby bath set uses gentle bath time formulas with relaxing lavender and vanilla scents which are known to help soothe and calm baby before bed.
Aveeno Baby Calming Comfort Bath is a rich lather cleanser that is tear-free and soap-free, and when combined with a warm bath is clinically shown to soothe and comfort your fussy baby before bedtime.
Clinical studies show that massage calms babies, improving their overall well-being so after a bath, so the Calming Comfort Lotion can be used to help babies relax before bedtime and features a non-greasy, moisture-rich natural oatmeal formula
Baby bath set is paraben- and phthalate-free, so it’s gentle enough for baby’s sensitive skin and leaves it feeling soft, smooth, and healthy
'''),
  Product(
    title: 'Angelcare Baby Bath Support, Aqua',
    id: '3',
    category: Category.baby,
    images: [
      'https://www.astthim.co.uk/wp-content/uploads/2021/05/41XTWZZ8E2L.jpg',
      'https://www.astthim.co.uk/wp-content/uploads/2021/05/41KB8FLwjlL.jpg',
      'https://www.astthim.co.uk/wp-content/uploads/2021/05/41t7RrDEsSL.jpg',
      'https://www.astthim.co.uk/wp-content/uploads/2021/05/4140C6Y71bL.jpg',
    ],
    price: 20,
    description: '''

The Angelcare Bath Support takes the worry out of bath time. This is the new way to wash and pamper your baby. Designed for comfort and safety, the bath support assures that your child’s hygiene is maintained with a clear water and easy to rinse bathing process. No baby should have to sit inside a tub of used water, with this new product we can provide a supply of clear water to wash and rinse your child with a worry free bathing process.

Use Directly in Bath Tub – Easy to use on daily basis, you can place it directly into your bath tub. Fits inside the bathtub and single basin sinks larger than 23 x 14 inches
Ergonomic Design – Ergonomically designed for your baby’s comfort and safety, with soft-touch material that is gentle on baby’s delicate skin
Easy to Store – Includes a loop at top so that you can hang it up for convenient storage
Durable, Lightweight Plastic –Designed to keep its shape over time. Latex free
Made from: Polypropylene (PP) and Thermoplastic Elastomer (TPE). BPA free
''',
  ),
  Product(
      title:
          'Baby Shower Boy Girl Transparent Box Baby Shower Decoration Baby Christening Birthday Party Decor Cardboard Box Baby Shower Gift',
      id: '4',
      category: Category.baby,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/01-20.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/03-20-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/02-20-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/04-20-600x600.jpg',
      ],
      price: 10,
      description: '''

Reminder:

Size of the box:11.81inch*11.81inch*11.81inch/30cm*30cm*30cm The letters are stickers, you can customize 26 letters: A-Z Gold Baby Box is not transparent, others are transparent. Christmas Red box for Christmas decorations, not balloons Suitable for boys and girls, baby shower or other festivals! The box can fill the balloons. Let’s customize your unique box with your heart!

Usage for:

Baby Shower Baby Shower party decoration Baby Shower Girl Baby Shower Boy Baby shower decorations Christening & Baptism

Notice:

1. Due to the light and screen difference, the item’s color may be slightly different from the pictures. 2. Please allow some differences due to manual measurement. 3. Please allow 2-3cm errors due to manual measurement. 4.Thank you for your kindly understanding.
'''),
  Product(
      title: 'Fisher-Price Infant-to-Toddler Rocker – Geo Diamonds',
      id: '5',
      category: Category.baby,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/5135c4GbM9L.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41zOB4qXXJL.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41yE9T8T79L.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/31g1oh72feL.jpg',
      ],
      price: 34,
      description: '''

The Fisher-Price Infant-to-Toddler Rocker starts out as a stationary infant seat or rocker with bat-at toys overhead for play time. Then, as your baby grows, you can easily remove the toy bar and convert it to a toddler chair for children up to 40 lb (18 kg).

Stationary baby seat and rocker for use from infant to toddler (up to 40 lb/18 kg)
Adjustable seat recline and removable toy bar with 2 bat at toys
Calming vibrations help soothe and comfort your baby
Fold out kickstand for stationary seating
Removable, machine washable seat pad
'''),
  Product(
      title:
          'Fisher-Price Rainforest Music & Lights Deluxe Gym [Amazon Exclusive]',
      id: '6',
      category: Category.baby,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41cdvZ8dqL.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41Qfz77nF2L.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41B7-wE7wdL.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/517UNfZBIdL.jpg'
      ],
      price: 60,
      description: '''

With a third play setting and more than 10 toys & activities, the Fisher-Price Rainforest Music & Lights Deluxe Gym keeps baby busy as a bee, at home or on the go! The rainforest comes to life with music, lights and nature sounds that respond to baby’s movement. During lay & play time, hanging activity toys & motion-activated music encourage teeny-tiny ones to reach, bat & play…hello, toucan! Lower the toys or move them to the soft deluxe mat to encourage baby to push up for tummy time fun! Sweet details, including a soft, satiny mat border and large crinkle leaf, offer sensory development as your little one plays. And, for extra on-the-go fun, remove the take-along toucan, which features up to 20 minutes of music in the long-play setting as well as cool, color-changing lights! Go wild, baby!

Deluxe newborn gym with 10+ toys and activities and a removable, take-along toucan with music and dancing lights
Three ways to play: Lay & play, tummy time and take-along
Responds to baby’s movement with music and lights in short-play setting
Up to 20 minutes of music in long-play setting!
'''),
  Product(
      title:
          '18k Premium Khronos Custom Watch Real Diamonds White Gold Finish Ice House Watch',
      id: '7',
      category: Category.gadgets,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/01-26.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/02-26-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/03-26-600x600.jpg'
      ],
      price: 380,
      description: '''ICE HOUSE

Canary Men’s Real Ice House Genuine Diamond 18K White Gold Finish Solitaire  Bezel Solid Steel Back Cover 6 Row  Custom Band Watch  W/Date

DESCRIPTION

we are proud to bring to you the fashionable and very affordable Fashion Jewelry.  With each unique design, these  Jewelry are guaranteed to satisfy your craving for shine and design .we carry a wide variety of Fashion Jewelry that fit in any price budget, being a great example for fashionable designs at an unbeatable value.

This is a Brand new, in-box, ice house diamond watch.

The Gold Canary Yellow Tone and  Yellow stone Roman Numeral illusion give it an unbeatable shine. With a fantastic 1 row all Yellow Round bezel and Custom band, it’s sure to look classy with anything you wear!

#1 Top-Rated  Quality

White Gold Finish

8 Real Diamond Timepiece Watch

1 Row Custom Round Solitaire Bezel

6 Row  Custom Band

Citizen Japan Miyota date Movement

Solid  Australian  Brass construction with

18 k Micron platting

Solid Stainless steel Back Cover

The date on the Dial Great Feature

Japanese Battery

3 ATM Water Resistant

Fully Custom 6 Row Custom Band

Case Dimension: 55 Mm

Watch Length:8.5 inch

White Gold-Tone  Full Illusion Dial

Stone: High-Grade AAA Cubic Zirconia

Hard flex Mineral Crystal

watch weight: 180+ Grams

Exclusive Ice House Wood Watch Box Accompanied

Exclusive Piece.

Its Our own Exclusive  Brand

Free Shipping WOW!!!

ENJOY THE AMAZING PURCHASE OF ICE HOUSE WATCH.

WHERE QUALITY STAND FIRST

WE ARE THE PRODUCER OF THE EXCLUSIVE PIECE 

TERMS OF SALE

We warranted and represent that the good are as described in the above listing.We specially disclaim any implied warranties of the title, merchant ability fitness for particular purpose and non-infringement. Customers should satisfy themselves that any item choice made is suitable for their intended purpose for use We pride ourselves on your customer service.In the rare event that you have a problem with the item please contact us and we’ll be happy to help.

ABOUT US

We are motivated and enthusiastic to have a perfect record in customer satisfaction and providing products at a great price. All our items are 100% genuine and are of high quality diamonds, which have amazing clarity and color. Jewelry for Less is known for the variety of jewelry in both Men’s and Ladies fashion. We value every customer and we want to ensure the satisfaction of each customer. We will make the commitment to every single customer that they will have the best experience here at our store. At the end we treat each and every customer with the same level of courtesy and respect that we expect to receive. If you have any questions about the item feel free to contact us via eBay by clicking on the ask seller button.'''),
  Product(
      title: '3M WorkTunes Connect Hearing Protection',
      id: '8',
      category: Category.gadgets,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51HsgZiV7wL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41VZDAiuFLL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41gDYljnCpL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41mDdfCVpHL._AC_.jpg',
      ],
      price: 50,
      description:
          '''The next generation in WorkTunes hearing protection and entertainment, the 3M WorkTunes connect wireless hearing protector with Bluetooth technology combines a modern, comfortable design with high-fidelity sound quality. This innovative hearing protection lets you conveniently make and take phone calls. Equipped with Bluetooth wireless technology, these ear-protective headphones allow you to stream the entertainment of your choice from your smartphone or other mobile device, while providing hearing protection in noisy environments. The low profile and lightweight design is crafted with style in mind. Built-in comfort features such as soft ear cushions and a hat-compatible headband are excellent for extended wear. Whether you’re using a power saw or mowing the day away, reach for 3M WorkTu­nes connect hearing protector with Bluetooth technology to help make your workday entertaining and–most importantly ­comfortable.

NRR of 24 dB (Noise Reduction Rating)
Bluetooth technology lets you seamlessly stream entertainment from your mobile phone and any other Bluetooth enabled device
High fidelity speakers provide premium sound quality
INTEGRATED MICROPHONE lets you make and take phone calls without removing the hearing protection
CORD AND ANTENNA FREE design lets you move easily on the job'''),
  Product(
      title:
          'KDEAM Rectangular Polarized Sunglasses Men Outdoor Driving Sun Glasses Man TR90 Flexible Frame Mix Stainless Steel Temple',
      id: '9',
      category: Category.gadgets,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/01-24-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/02-24-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/03-24-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/04-24.jpg',
      ],
      price: 24,
      description: '''

KADAM Classic Rectangular Polarized Sunglasses Men Outdoor Driving Sun Glasses Man TR90 Flexible Frame Mix Stainless Steel Temple

Frame Material: Unbreakable TR90 Lens Material: TAC Polarized (1.1mm thickness) Temple: Stainless steel Suit for Men Lens Function: UV400 Protection + Polarized

Size :

Frame width : 65mm/2.55in Frame height: 47mm/1.85in Nose bridge: 15mm/0.59in Temple length : 135mm/5.31in Overall width : 145mm/5.7in
'''),
  Product(
      title:
          'Rocketbook Smart Reusable Notebook – Dot-Grid Eco-Friendly Notebook with 1 Pilot Frixion Pen & 1 Microfiber Cloth Included – Midnight Blue Cover, Executive Size (6″ x 8.8″)',
      id: '10',
      category: Category.gadgets,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41ysi9t4l3L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51u7HR7K5aL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41bOjWomsdL._AC_.jpg',
      ],
      price: 32,
      description: '''

The Rocketbook notebook provides a classic pen and paper experience, yet is built for the digital age. Although it feels like a traditional notebook, the Rocketbook is endlessly reusable and connected to all of your favorite cloud services. When you write using any pen from the Pilot Frixion line, your writing sticks to Rocketbook pages like regular paper. But add a drop of water… and the notebook erases like magic. We designed the Rocketbook for those who want an endlessly reusable notebook to last for years, if not a lifetime. The Rocketbook has pages made with synthetic materials that provide an extremely smooth writing experience. Blast your handwritten notes to popular cloud services like Google drive, Dropbox, Evernote, box, OneNote, Slack, iCloud, email and more using the free Rocketbook application for iOS and Android.

No more wasting paper – this environmentally-friendly 36 page dotted grid notebook can be used endlessly by wiping clean with a damp cloth
Blast your handwritten notes to popular cloud services like Google drive, Dropbox, Evernote, box, OneNote, Slack, iCloud, email and more using the free Rocketbook application for iOS and Android
Allow 15 seconds for ink from any Pilot Frixion pen, marker, or highlighter to dry in order for it to bond to our specialized pages
Sophisticated AI technology allows you to use Rocketbook’s smart titles, smart search, and email transcription for easier naming and searching of your notes
Includes 1 Rocketbook Core (formerly known as Everlast) Executive Size (6″ x 8.8″) Notebook, 1 Pilot Frixion Pen, and 1 Microfiber Cloth. Note package may reflect “Everlast”
'''),
  Product(
      title:
          'BOAER Hanging Solar lights Outdoor Garden Boho LED Flower Waterproof Decorative Metal Light for Porch Garden Outdoor',
      id: '11',
      category: Category.garden,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51cl0SGfyOL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51ZTbyIHUcL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/510tFas0yxL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51Gdtzd4XzL._AC_.jpg'
      ],
      price: 27,
      description:
          '''BOAER Hanging Solar lights Outdoor Garden LED Flower Waterproof Decorative Metal Light for Porch Garden Outdoor-4 Lumens
4 Lumens.Auto turn on/off.The garden solar lights automatically turn on at dusk and off at dawn.solar panels harness the sun’s energy for hours of gentle light provided by a soft white LED.it is energy-saving and eco-friendly. When charged for about 6-8 hours, it can work up to 6-8 hours.
Elegant by day and delightful at night.It add festive and mysterious atmosphere for the party or summer nights.Perfect decoration for garden, yard, patio, landscape, etc.
Easy to install and waterproof. No wire required and simple to use'''),
  Product(
      title: 'Forum Novelties Halloween Zombie Lawn Decoration',
      id: '12',
      category: Category.garden,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51p6PtUAxnL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51QOQd9abmL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41kshDSirWL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/61Pn54vhnqL._AC_.jpg',
      ],
      price: 14,
      description: '''

Zombie lawn decoration
Zombie groundbreaker outdoor decoration
Ideal for Halloween party decoration
Colour: Grey
Size: One size

Zombie Ground Breaker
Size: 26cm approx.
Includes Zombie Ground Breaker Outdoor Dec
The Perfect Halloween Decoration
'''),
  Product(
      title:
          'G & F MiniGardenn 10027 Fairy Garden Miniature, Cardinal Birdbath Pick',
      id: '13',
      category: Category.garden,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41YtT9ZdBL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/410DjirTKiL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51qXUNbDmyL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/61okTC5UcKL._AC_.jpg'
      ],
      price: 5,
      description: '''

Part of G & F MiniGardenn Collection, this cute bird bath is a great accessory to any fairy garden. The bath and the cardinal have been hand painted, and look just like the real thing! The bath can be filled with water for added detail, and can be used indoors and outdoors. The two inch metal base pick makes the piece easy to mount on any indoor or outdoor fairy garden. Whether you’re just starting your fairy garden or have been building one for years, this accessory makes a beautiful addition to any fairy garden.

Made from resin
Two inch metal pick at base for easy placement
Part of G & F MiniGardenn Collection
Measures 2.25″ inches in height
'''),
  Product(
      title:
          'MAGGIFT 2 Pack Hanging Solar Lanterns Retro Solar Lights with Handle, Outdoor Solar Garden Lights Decor for Yard Tree Fence Patio 6 Lumens, Brown',
      id: '14',
      category: Category.garden,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/61oqgfHY4ZL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51qvfcUCD1L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51vmzQmmitL._AC_-100x100.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51X14eFJZL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51PJtWtSb1L._AC_.jpg',
      ],
      price: 30,
      description: '''Specification:

Material: Metal (antique bronze finish), Plastic

Dimensions: 6 x 6 x 6.7 Inches Each Lantern

Powered Source: Solar Powered

Bulb Type: 3000K Warm White LED

Battery: 1 x AA 400mAh NI-MH Rechargeable Battery Each Lantern

Lumen: 6 Lumens

Waterproof Rate: IP 44

Made of iron (antique bronze finish) and plastic, the light of solar lanterns is subtle and soft.

Each lantern includes 1 AAA 400mAh NI-MH battery, when getting enough sunlight, the lantern will be turned on automatically and can last for 8 hours or more at night.

There is the switch ON/OFF on the back of lantern cover, please cover the solar panel from sunlight and turn on the switch to check if it works. Be sure TURN ON button before charging.

Charging Time: 6-8 Hours(in the sun)

Working Time: 8-10 hours(when getting enough sunlight)

Package include: 2 x Solar Lanterns'''),
  Product(
      title:
          'Outdoor Solar Lights, KOOPER 4 Pack Solar Garden Lights with 16 Bigger Lily Flowers, Waterproof 7 Color Changing Outdoor Lights – Bigger Solar Panel for Garden Patio Yard Pathway Decoration',
      id: '15',
      category: Category.garden,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51szLpCVXfL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51Rvj8X29vL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51pXDVDQ7L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51VS3XwEg6L._AC_.jpg'
      ],
      price: 34,
      description: '''SOLAR LIGHTS OUTDOOR

Warm Tips

Please be sure to turn ON the switch before using, otherwise it won’t be charged.
Please remove the transparent protective film on the solar panel, this will allow the solar panel to receive more sunlight.
You can install the solar lights in locations where the sun source is unrestricted and strong.
Please wipe the solar battery panel with a soft cloth regularly to increase the amount of sunlight absorbed.

Package Included

Red Solar Lily Flower Light x 1

Purple Solar Lily Flower Light x 2

White Solar Lily Flower Light x 1

Iron Stake x 4

Ground Spike x 4

User Manual x 1

Parameter

Solar Panel

2V/0.3W Mono Crystalline Silicon

Battery (built-in)

1.2V 600mAh Ni-MH AA

Waterproof Class

IP65

Charging Time

4-6 hours (According to local weather)

Working Time

8-10 hours after full charged

Material

Soft fabric/Plastic&Aluminum/ABS-Stainless Steel Stem'''),
  Product(
      title:
          'Dee CEE Labs Formula 303 Maximum Strength Natural Relaxant Tablets, 250 Tablets',
      id: '16',
      category: Category.health,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41FU83XCQYL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51406uKJ1L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51K9Qrz5NUL._AC_.jpg'
      ],
      price: 42,
      description:
          '''Formula 303 is an all natural herbal remedy that harnesses the medicinal properties of valerian root, passion flower, and magnesium to provide you with relaxed muscles, stress relief, and natural relief from just some of the following*:

Muscle pain
Muscle spasms
Joint pain relief
Stress
Anxiety
Muscle tension
Pain associated with muscle damage from a pull
Tension and stress
Mild Insomnia

Other valerian root herbal supplements only contain one or two of these important ingredients, Formula 303’s unique blend allows for the maximum levels to provide you with a safe, non-habit forming natural muscle relaxant that is perfect for long term use.*

Used for Centuries to calm upset nerves and for treating mood problems, pain, and headaches. Today, it is still used for its antispasmodic, camative, tranquilizing, carminative, and pain relief effects.*

Discovered in 1569, passion flower has been used primarily as a sedative used to quell nervousness and anxiety, promote better sleep, reduce swelling as an anti-inflammatory, and as an antispasmodic and anti-convulsant used in the treatment of muscle cramps, dysmenorrhea, and other conditions.*

Magnesium is one of the most essential minerals in the development and function of nerves. It plays a large role in the overall stabilization of nerve cells, which without nerve cells would be in the state of tetany.*

*These statements have not been evaluated by the FDA. This product is not intended to diagnose, treat, cure or prevent any disease.

Effective for those with difficulty sleeping, snoring, restlessness
Natural tension and stress relief, relaxation'''),
  Product(
      title:
          'Florastor Daily Probiotic Supplement for Men and Women – Saccharomyces Boulardii lyo CNCM I-745 (250 mg; 50 Capsules)',
      id: '17',
      category: Category.health,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51j8imE7NzL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41x1UrLd-kL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51Jg4a9QA1L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/513-Lbwx2NL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/514O9MUELTL._AC_.jpg',
      ],
      price: 32,
      description: '''

Florastor is a daily probiotic supplement that strengthens your digestive balance and supports a healthy immune system. Florastor is the ONLY probiotic brand with Saccharomyces boulardii lyo CNCM I-745, a unique probiotic strain with a larger, stronger cell structure than other probiotics. Saccharomyces boulardii lyo CNCM I-745 is shown to help boost your body’s natural production of IgA – an important antibody in your digestive system that helps fight off potentially harmful bacteria. With just two capsules once or twice a day, Florastor Probiotic Supplements help support a healthy digestive tract – where 70% of your immune system lives. Florastor is a gluten-free, non-GMO probiotic offered in vegetarian capsules. Our patented freeze-drying process gives Florastor a three-year shelf life protecting the live cells without refrigeration. It’s perfect for travelers on-the-go and those with active lifestyles. Important Information. Contains lactose (sourced from milk). The ingredients in this dietary supplement are generally recognized as well tolerated when taken as directed. Instances of side effects while taking Saccharomyces boulardii lyo CNCM I-745 are rare with less than 1% of individuals reporting mild constipation or thirst. In very rare cases, allergic reaction (such as skin rash) may occur. Not recommended for use in an acute-care setting for or around those with vascular line access. Do not use if pre- or post- organ or bone marrow transplant, severely immunocompromised, or critically ill. Do not use if allergic to any components (especially yeast).

DIGESTIVE & IMMUNE SUPPORT: Florastor helps increase the natural flora in your digestive tract & supports overall health by strengthening your digestive balance & supporting a healthy immune system.
HEALTHY LIFESTYLE: Made with ingredients found in nature that are vegetarian, gluten-free, & appropriate for lactose intolerance, Florastor probiotics complement your healthy & active lifestyle.
NO REFRIGERATION REQUIRED: Our capsules & powder sachets do not require refrigeration & have a 3-year shelf life. You can swallow capsules whole or mix the powder into your favorite food or beverage
THE PROBIOTIC OF CHOICE: Florastor is the trusted probiotic supplement of choice by families around the world. We use a unique & effective probiotic strain with over 60 years of use & research.
'''),
  Product(
      title:
          'Garden of Life Dr. Formulated Probiotics for Men, Once Daily Men’s Probiotics + Prebiotic Fiber, 50 Billion CFU Guaranteed, Shelf Stable, Gluten Free One a Day, 30 Capsules *Packaging May Vary',
      id: '18',
      category: Category.health,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51d88jyhsjL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51MGhJXPKTL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51hDJ4QnwL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51HFnSHEvDL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51fAeyuDyFL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51FqNHQvrlL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/512ZEjAcIdL._AC_.jpg',
      ],
      price: 28,
      description: '''

Dr. Formulated Probiotics Once Daily Men’s is a unique “just one capsule a day” shelf stable probiotic for men. Once Daily Men’s is a specifically designed vegetarian supplement with a high probiotic count to support a healthy microbiome and men’s specific health needs. Dr. Perlmutter created this unique formula with a high count of beneficial probiotics made from diverse strains, including Lactobacilli and Bifidobacteria, that are resistant to stomach acid and bile, exclusively for men’s colon support, occasional gas and constipation relief and immune system health. David Perlmutter, M.D., is an expert in the human microbiome, a board-certified neurologist, Fellow of the American College of Nutrition, America’s brain-health expert and #1 New York Times best-selling author.

PROBIOTICS FOR MEN: Specially formulated probiotic for men’s specific health needs and colon support
IMMUNE SUPPORT: This dietary supplement has 50 billion CFU and 15 probiotic strains for immune system health
SHELF STABLE PROBIOTICS: This 50 billion probiotic comes in 30 one daily capsules; no refrigeration required
HYPOALLERGENIC PROBIOTIC: Our probiotics supplement is dairy free, gluten free, soy free, and vegetarian
'''),
  Product(
      title: 'Gibson Soho Lounge Dinnerware set, Square, Purple',
      id: '19',
      category: Category.home,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/414fGr1F0L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/31WPDLu1j2L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/31FC-RsVx0L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51JOppp55KL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/61gnN5PZtbL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51F7Q2WoRpL._AC_.jpg',
      ],
      price: 48,
      description: '''

Whether it is for a seasonal extravaganza or a romantic dinner date you will set the mood for any occasion with a contemporary and modern look that’s versatile and durable. Add the unique elegance of SOHO lounge to your table today.

Gibson Home SoHo Lounge 16 pc Purple Soft Square Dinnerware Set
Reactive Glaze Stoneware
Service For 4 Includes: 4 -12.75in (Diagonal) Dinner Plates, 4 – 9in (Diagonal) Dessert Plates, 4 – 6.25in Bowl and 4-Piece 13oz Mug
'''),
  Product(
      title:
          'Hidden Doorstop Door Stopper Home Improvement Door Holder Stainless Steel Magnet Door Stops',
      id: '20',
      category: Category.home,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/01-33.jpg'
      ],
      price: 7,
      description: '''Features:

    Constructed of Stainless steel, sturdy and rust-proof.
    Easy to install
    Come with screws, if you want to screw it on the floor.
    The Magnet is strong enough to hold and stop the door, protects your walls from unsightly damage and conveniently holds your door open.
    Material: Stainless Steel
    Size: As The Pictures
    Color: Silver, Black
    Type: Door Stops
'''),
  Product(
      title:
          'Home Decor Security Card Hanging Door Stopper Silicone Door Stop Safety Baby 1 Pcs Home Improvements Cute Cartoon Leaf Style',
      id: '21',
      category: Category.home,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/01-34.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/02-36.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/03-36.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/04-35.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/05-34.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/06-32.jpg',
      ],
      price: 2,
      description: '''

Features：

Eco-friendly, practical, health

Natural antibacterial, high strength and softness, corrosion resistance and adaptability

Not easy to damage, no cracking, durable

It is very useful and can help to protect babies

Material:  Silicone

Size:    9.5*5*2.2cm

Colour:   Yellow, green, blue , coffee

Packing: 1pcs/pack'''),
  Product(
      title:
          'Home- It Mop and Broom Holder, 5 Position with 6 Hooks Garage Storage Holds up to 11 Tools, Storage Solutions for Broom Holders, Garage Storage Systems Broom Organizer for Garage Shelving Ideas',
      id: '22',
      category: Category.home,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51iC0wj8aAL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41KkNFY618L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41KN2218reL._AC_.jpg',
      ],
      price: 14,
      description: '''

A “wall” organizer designed to hold various household objects with handles of varying thickness. Simply insert a handle into a slot and a rounded, gravity controlled, rolling ball automatically adjusts to the handle’s thickness and grips it securely. Use in the laundry, garage, garden, utility room, offices, and more. Plastic Mop, Broom, and Long-Handled Tool or Sports Equipment Holder System-Mount on the Wall in Your Home’s Kitchen or Garage – Hang Items Securely- Great Storage Idea for Staying Organized-Best Lifetime Guarantee. BR BR titular de la escoba.

Plastic
Made in USA or Imported
superior Quality Tool Rack Holds Mops, Brooms, or Sports Equipment and Storage Tool Rack Storage & Organization for the Home Plastic Hanger for Closet Garage Organizer Shed Organizer Basement Storage (High Quality)Easy release by lifting the handle
Compact sizing and clean design garage organization systems
broom organizer wall mount broom organizer rack Rolling balls automatically adjust to each handle’s thickness and grips it securely
Each ball holds up to 7-1/2 pounds of weight
'''),
  Product(
      title:
          'KAF Home Pantry Lemons All Over Kitchen Dish Towel Set of 4, 100-Percent Cotton, 18 x 28-inch',
      id: '23',
      category: Category.home,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/21lw3FWfaL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41HWS5qa7xL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41JgMlBKhiL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41tGeUmzYeL._AC_.jpg',
      ],
      price: 13,
      description: '''

This KAF Home Kitchen Dish Towel Set of 4 is ideal for your kitchen decor. Also makes a lovely housewarming gift. Each towel is 18 x 28-inches in size unwashed. Minimal Shrinkage may occur after washing / drying. Made in India from 100-Percent Cotton. Wash in Cold Water with like colors, Dry in warm dryer.

Imported
Set of 4 includes: 1 Lemons All Over print towel and 3 Yarn Dye towels as shown in image.
Each towel is 18 x 28-Inch in size unwashed and then Minimal Shrinkage may occur after washing / drying
Each towel comes with a convenient sewn in loop for easy hanging
Lemons All Over will make a splash for your kitchen décor, this Kitchen Dish Towel Set of 4 is ideal for your own home or makes a lovely housewarming gift
100-Percent Cotton, Made in India. Wash in Cold Water with like colors, Dry in warm dryer
'''),
  Product(
      title:
          'Aquatic Aquarium Supply Fish Tank Root Fertilizer Tablets Water Grass Accessory',
      id: '24',
      category: Category.pet,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/01-15.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/02-14-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/03-14-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/04-14-600x600.jpg',
      ],
      price: 8,
      description:
          '''It can resolve mineral slowly and longtime,having important living iron and maganese
Suitable for all kinds of plants.
Funtion:Root Fertilizer for Water Plant
Nutrient in fertilizer will not run off and pollute water.
Mixed delolop nourishing ingot-shaped
Nutrient will be timely provided with root of plants.
Color:Red
Quantity: 1 box(36Pcs)
Usage:
1.Fro erery 20L of water put one table.
2.It can dissoved in the water for 4~5 hours, efficacy of about 3 weeks
3.The medicine must be pulverized, immediate insert the place near the water plant roots. Add a half of medicine better after every exchange water.
Package includes:
36pcs/box Root Fertilizer Tablet(other accessories demo in the picture is not included.)
Note:
1.Better to use 100% water plant root fertilizer with 100% water plant Liquid
2.Please allow 1-3mm error due to manual measurement. pls make sure you do not mind before you bid.
3.Due to the difference between different monitors, the picture may not reflect the actual color of the item. Thank you!'''),
  Product(
      title: 'Fresh Step Lightweight Clumping Cat Litter',
      id: '25',
      category: Category.pet,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Fresh-Step1-600x643.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Fresh-Step-Extreme-Scented-Litter2-1-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Fresh-Step-Extreme-Scented-Litter3-1-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Fresh-Step-Extreme-Scented-Litter4-1.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Fresh-Step-Extreme-Scented-Litter5-1-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Fresh-Step-Extreme-Scented-Litter6-1-600x600.jpg',
      ],
      price: 9,
      description:
          '''ODOR CONTROL CAT LITTER: This Fresh Step Litter controls odors naturally with activated charcoal and no additional fragrance. 10 Days Odor Control Guaranteed
CLUMPING LITTER: Fight litter box odors with our easy to scoop, clumping unscented clumping clay cat litter
LOW DUST LITTER: For cleaner surfaces and clearer air, we developed a low dust formula
SCOOPABLE KITTY LITTER: Make cleaning easy with ClumpLock technology that absorbs liquid and forms tight clumps leaving behind no stinky crumbles
FRESH STEP LIGHTWEIGHT CAT LITTER: This unscented Fresh Step cat scoopable litter is created with your cat’s health and happiness in mind in a lightweight formula that’s easier to lift, pour, and store'''),
  Product(
      title: 'Hartz Just For Cats Cat Toy',
      id: '26',
      category: Category.pet,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Hartz-Just-For-Cats1-600x1058.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Hartz-Just-For-Cats2-600x1071.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Hartz-Just-For-Cats3.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Hartz-Just-For-Cats4-600x600.jpg',
      ],
      price: 3,
      description:
          '''Keep your playful cat captivated for hours with a combo of Paw some toys
Includes 6 balls, 3 pom-poms, 2 catnip mice, 1 catnip fish and 1 wand
Lightweight toys are purrfect for your cat to carry, toss and bat
Exercise your cat’s natural instincts to explore and thrive in the world around them with toys that stimulate all of their natural play needs'''),
  Product(
      title: 'IAMS PROACTIVE HEALTH Minichunks Dry Dog Food, Chicken',
      id: '27',
      category: Category.pet,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/IAMS-7.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/IAMS-8.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/IAMS-9-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/IAMS-10.jpg',
      ],
      price: 37,
      description: '''

    Contains one (1) 30 pound Bag of IAMS Proactive Health Adult Minichunks Dry Dog Food Chicken
    Veterinarians recommend IAMS; we’ve got your dog’s diet down to a science
    Real, farm raised chicken is the 1st ingredient. 3650 kcal/kg
    Builds strong muscles with quality protein
    Maintains healthy digestion with a premium blend of fiber and prebiotics
    supports a strong immune system with antioxidants
    Formulated with L Carnitine to help maintain healthy metabolism

'''),
  Product(
      title: 'Litter Genie Standard Cat Litter Disposal System Refills',
      id: '28',
      category: Category.pet,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Litter-Genie1.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Litter-Genie2-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Litter-Genie3-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/Litter-Genie4-600x600.jpg',
      ],
      price: 27,
      description: '''

    HASSLE-FREE ODOR CONTROL – When used with any Litter Genie pail, seven layer refills with odor Barrier technology lock away germs and odors from soiled cat litter for up to two weeks (for one cat). (xl pails store litter for up to three weeks)
    TWO MONTH MARVEL – everyday searching for plastic bags and frequent trips to the trash can are now a thing of the past. One refill cartridge lasts up to two months (for one cat).
    JACKSON GALAXY APPROVED – as a cat behaviorist for over 20 years, Jackson Galaxy, the official cat Daddy, understands what it takes to create a Happy home for cats and the people who love them. Litter Genie is a necessity (not a luxury) in his home and that’s why he recommends this cat litter disposal system to all Cat owners across America.
    EASY TO INSERT AND USE – to use in any Litter Genie pail, Simply pull out a foot of film, Push it through the center of the cartridge and tie a knot at the bottom. Then, open the lid and funnel of the pail, sit the cartridge on top, and push the refill through to the bottom.
    UNIVERSAL FIT – never worry about having the wrong size refill cartridge. All of our refill cartridges are designed to fit all our pails, standard, plus, and XL, taking the hassle out of buying refills.
    Age Range Description: all ages
    Included Components: Litter Genie Cat Litter Disposal System Refill Cartridge

'''),
  Product(
      title: 'Casio Men’s ‘G-Shock’ Quartz Resin Sport Watch',
      id: '29',
      category: Category.sports,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41gRHZ9my5L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/413eToOp4JL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41t2i5lToAL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/21DSte8H0iL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/31rlIiInnxL._AC_.jpg',
      ],
      price: 44,
      description: '''

With full 200M WR, Shock Resistant, 24Hr stopwatch and countdown timer, standard issue never looked this good. Black resin band digital watch with black face.

Shock-resistant sport watch featuring multi-function rectangular dial with afterglow EL backlight, daily alarm, and countdown timer
48.5 millimeters resin case with mineral dial window
Quartz movement with digital display
Functions include multi-function alarm, 1/100-second stopwatch, hourly time signal, auto calendar, and 12/24 hour formats
Water resistant to 200 m (660 ft): In general, suitable for professional marine activity and serious surface water sports, but not scuba diving.
'''),
  Product(
      title: 'Champion Men’s Jersey Short With Pockets',
      id: '30',
      category: Category.sports,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/31ZSv3wfcaL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/312geIeOm9L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/31QoryW1jdL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/31FgiqP-7BL._AC_.jpg',
      ],
      price: 11,
      description: '''

Jersey short with pockets: jersey at it’s best – the ultimate in comfort and durability.

Imported
Drawstring closure
Machine Wash
1″ high
8″ wide
Short featuring logo at left hem and elastic waistband with adjustable internal drawstring
'''),
  Product(
      title:
          'FITTIN Racerback Sports Bras for Women- Padded Seamless High Impact Support for Yoga Gym Workout Fitness',
      id: '31',
      category: Category.sports,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51lDHMwnNL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41jhhqtVcOL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51wZOnvTL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51wOep5ikFL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51nFeqXup0L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51KjP6Gfd5L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51OYKSV5c3L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41sMNvyqJ9L._AC_.jpg',
      ],
      price: 13,
      description: '''

FITTIN SPORT invite you to enjoy the sleek and soft feel of this women’s comfort flex fit get cozy racer back bra.Built for Low-Med Impact activity & all-day comfort.Offering a clasp-free design, this pullover bra features wide shoulder straps and a racer back for a supportive fit. A wide center gore, stretch band and wireless design provide a smooth and flattering look. Deep plunge detail with skinny racer back for enhanced mobility. Wear this bra with confidence all day.'''),
  Product(
      title:
          'InnoGear Solar Lights Outdoor, Upgraded Waterproof Solar Powered Landscape Spotlights 2-in-1 Wall Light Decorative Lighting Auto On/Off for Pathway Garden Patio Yard Driveway Pool, Pack of 2 (White)',
      id: '32',
      category: Category.sports,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41og36QX6CL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/1595797729_51bFo4E70XL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/1595797742_51lFIZZDptL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/1595797757_41GrNfUW3uL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/1595797799_51xRe01TzYL._AC_.jpg',
      ],
      price: 26,
      description: '''InnoGear VS. Other Brand | The Primary Difference
What is the spotlight? As the name suggests, the solar spotlight is there to “spot” or illuminate a particular area or material. If you want to highlight a flagpole or plant in your backyard, you wouldn’t want to try other brand’s so-called ‘spotlight’ with SMD chips, which is more like a floodlight that cannot cast a concentrated beam of light, the emphasis on your flagpole or beautiful plant will be lackluster.

InnoGear upgraded spotlight should be your preference. Adopts powerful LED bulbs and concentrate design, it will cast a bright and focus beam of light to highlight any specific objects, and everyone is bound to pay attention. It is also the perfect choice for illuminating your driveway because precise visibility can help you drive comfortably.

Excellent Quality and Durability
Its all-around good performance combined with outstanding reliability. It is fully resistant to particles entering it and is resistant to jets of water. The stakes are particularly durable and will keep the lights in place over a long time.

Working Modes & Working Time
InnoGear spotlight has two working modes, high mode lasts 6 hours, low mode lasts up to 12 hours, you can choose the mode that gets you the most run time versus brightness.

Specification
Solar panel: 5.5V 1.5W
Battery: 18650 lithium battery 3.7V 2200mAh
LED: 10mm 0.5W
Charging time: 8 hours'''),
  Product(
      title:
          'MIRITY Women Racerback Sports Bras – High Impact Workout Gym Activewear Bra',
      id: '33',
      category: Category.sports,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41kqLw-M0ZL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51Pg-CW-aIL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51Vm3BPHV0L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41xeSnBIozL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41eg8ALV6XL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/4122CypSINL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51Tnl4uda5L._AC_.jpg',
      ],
      price: 15,
      description:
          '''The MIRITY Sports Bra is Designed To Keep You Dry, Comfortable, and Supported Throughout Your Most Intense Run, Tennis Match, Or Other High Impact Activity. The Sports Bra with a Low Profile and Racerback Design, This Women’s Compression Sports Bra is a Versatile, Everyday Favorite. From Warm Up to Cool Down, This Women’s Sports Bra Will be There to Support You Through Your Most Intense Workouts.Refresh Your Training Routine. This Women’s Stretchy Sports Bra Features Body-Wrapping For Easy Movement and a Compression Fit That Supports Muscles as You Work

Impact: This Sports Crop Top is Ideal for all High Impact Activities. Wear it Running, Playing Netball or Tennis. This Bra Will Give You the Support You Need.

Features: Made From Premium High Performance Fabrics That are Moisture Wicking, Breathable, Anti-Ageing, Quick Drying With Four Way Stretch for Ultimate Performance. Flattering Panel Lines Through The Front for a Stylish Look. Removable Padding Inserts to Customise Your Fit.

Comfort: Stretch Performance Fabric Keeps You Cool, Double Layered Power Through The Back Ensure Ultimate Support, Comfort and Breathability. Flat-Locked Seams and Soft Cups Give You Non-Chafe Wearing for a Comfortable Fit.

Support: Open Racer Back to Keep You Cool And Supported. Compression Fit.'''),
  Product(
      title:
          'Apollo Tools DT9706P Original 39 Piece General Repair Hand Tool Set with Tool Box Storage Case Pink Ribbon',
      id: '34',
      category: Category.tools,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51Uol3pwbL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41BNjjt87oL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51MczHtzpNL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41ZcGAyjP-L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41d1gPRZQ2L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41yRaIau7ML._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/21zShewf9aL._AC_.jpg',
      ],
      price: 30,
      description: '''Tools are not just for guys!
HOME HOUSEHOLD TOOL KIT: The original 39 piece general tool kit with over 1 Million units sold worldwide. Great gift idea.
ESSENTIAL DIY TOOLS: This compact tool kit contains the most useful tools for basic DIY household repairs. Picture hanging, box opening, screw tightening, this is the perfect starter kit for home repairs.
MOST REACHED FOR DIY HAND TOOLS: Includes 8oz. claw hammer, slip joint pliers used for grasping and turning, tape measure, utility knife, bit driver with 2” bit extension and 20 most popular bit sizes, precision screwdrivers for small screws, 8 hex keys and a pair of scissors.
APOLLO HAND TOOL LIFETIME QUALITY GUARANTEE: Tools are manufactured from high-grade steel alloy, chrome plated to resist corrosion, with non-slip comfort grip handles for extra torque, and will last a lifetime under normal use.
STURDY COMPACT STORAGE CASE: Tools are neatly stored in a sturdy case to keep them secure, clean, organized and easy to find.
'''),
  Product(
      title:
          'Bates Paint Roller – Paint Brush, Paint Tray, Roller Paint Brush, 11 Piece Home Painting Supplies, Foam Brush, House Painting Tray, Painting Tools, Roller and Paint Brushes, Interior Paint Brushes',
      id: '35',
      category: Category.tools,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41wm2kh2I5L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/31ucUK49L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/31sm-jbbjJL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/312jO3K-4YL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51XCJP1HMLL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41hnNIvA2sL._AC_.jpg',
      ],
      price: 20,
      description: '''

Professional quality: Satisfaction Guaranteed, this paint tray set is high quality; intended to be long lasting and easy to clean. Exceptional ability to get the job done quickly with a superior finish. Fit for comfort: Wooden handle brush that is lightweight and easy to hold. Rubber coated, hard plastic handle for paint roller. A comfort that last for long tedious jobs. Handles allow for the best quality control with exceptional results. Thick filaments and naps: The synthetic filaments in the paint brush are designed to hold more paint to save you time and give you the finish you are looking for. The Naps for the paint rollers are 1/2 inch thick, perfect for painting the house. Filaments and Naps are durable and long-lasting. Affordable: Don’t waste your money on paint trays that will last you a hour. This high quality set is for perfectionist and money savers. The value you get in this Paint Tray set is unbelievable for the price. Anyone can use: It doesn’t matter whether you are a professional or a beginner, the Paint roller, tray, naps, and brushes are great for any user.

COMPREHENSIVE SET: Package includes 11 piece: Tray, Roller Frame (9″), 2 Roller Covers (9″x1/2″), Roller Frame (4″), 2 Roller Covers (4″x1/2″), 2″ Angel Paint Brush, High Density Foam Brush
PROFESSIONAL QUALITY: This paint tray set is high quality intended to be long lasting and easy to clean. Exceptional ability to get the job done quickly with a superior finish.
THICK FILAMENTS AND NAP: The synthetic filaments in the paint brush are designed to hold more paint to save you time and give you the finish you are looking for. The Naps for the paint rollers are 1/2 inch thick, perfect for painting the house. Filaments and Naps are durable and long-lasting.
AFFORDABLE: Don’t waste your money on paint trays that will last you a hour. This high quality set is for perfectionist and money savers. The value you get in this Paint Tray set is unbelievable for the price.
ANYONE CAN USE: It doesn’t matter whether you are a professional or a beginner, the Paint roller, tray, naps, and brushes are great for any user.
'''),
  Product(
      title: 'BLACK+DECKER 12V MAX Drill & Home Tool Kit, 60-Piece (BDCDD12PK)',
      id: '36',
      category: Category.tools,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/518wI0W2BsL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41ujSbsvIDL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/419ztW-2FvL._AC_.jpg',
      ],
      price: 72,
      description: '''

The BLACK+DECKER BDCDD12PK 12V MAX Drill Project Kit features a powerful compact 12V MAX lithium drill/driver and 59 hand tools and accessories most commonly used for DIY projects and household tasks;this home tool kit can help you tackle projects big and small. The 12V MAX Lithium drill is 35 percent more compact than previous GCO1200C NiCad drill/driver.The drill/driver features a mid handle design for comfort and control, along with an LED light to illuminate work surfaces. The lithium ion battery is always ready, and holds a charge up to 18 months. This kit also includes a convenient bag or portability and storage. What’s included: 12V MAX Drill/Driver, Tool Bag, Hammer, Tape Measure, Adjustable Wrench, Slip Joint Pliers, Ratcheting Screwdriver, Phillips Screwdriver, Slot Screwdriver, Utility Knife, Assorted Nut Drivers, Assorted Screwdriving Bits, Assorted Drill Bits,Level.

12 Volts Max cordless lithium drill
12V Max Lithium drill is 35 percent more compact than previous version
59 hand tools and accessories
Convenient carrying case for storage and portability
Included Components: (1) 8V Max Lithium Ion Drill, (1) Tool Bag, (1) Claw Hammer, (1) Tape Measure, (1) Adjustable Wrench, (1) Slip Joint Pliers, (1) Ratcheting Screwdriver, (1) Utility Knife, (4) Nut Drivers, (32) Screw driving Bits, (1) Level, (1) Drilling Bits, (1) Magnetic Bit Holder
'''),
  Product(
      title:
          'Drawer Lock For Security Door Cabinet Cylinder Door Mailbox Drawer Cupboard Locker With 2 Keys Home Safety Tools',
      id: '37',
      category: Category.tools,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/01-8.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/02-7-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/03-7-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/03-7-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/04-7.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/05-6-600x600.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/06-6.jpg',
      ],
      price: 2,
      description: '''Material: Iron
Lock core: 16MM
Type: Cabinet Lock
Suitable for  thickness: 22MM
Package Include: 1 x Cabinet Lock'''),
  Product(
      title:
          'General Tools MMD4E Digital Moisture Meter, Water Leak Detector, Moisture Tester, Pin Type, Backlit LCD Display With Audible and Visual High-Medium-Low Moisture Content Alerts, Grays',
      id: '38',
      category: Category.tools,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41zK8gL-n1L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41pqcdph9tL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41pMD3upGL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/510bbL11lEL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/413EOkuKtiL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51q9go5IL._AC_.jpg',
      ],
      price: 23,
      description:
          '''The General Tools MMD4E Pin-Style Digital Moisture Meter provides accurate moisture level reading to detect leaks, dampness and moisture in wood, walls, ceiling, carpet and firewood. It is an essential tool for assessing water damage and remediation efforts after flooding from storms, hurricanes, roof leaks or broken pipes to discover hidden water damage in floors, walls and under carpets. By checking suspicious water stains with a moisture tester around the house, you can determine whether the area is wet (a perfect breeding ground for mold) or has long since dried. This water leak detector also is helpful for new home inspections and home restorations, locating roof leaks or simply to ensure firewood is ready to burn. It also ensures the appropriate level of surface dryness before painting, sealing or treating wood or drywall. The moisture meter is easy to use: simply stick the stainless steel pins into the surface of what you are measuring in order to get a read-out. Overall measurement range of 5 to 50% for wood and 1.5 to 33% for building materials. The backlit, large, easy-to-read digits and clearly-designed LED alerts tell you immediately if the moisture content is high, medium or low. Plus, the moisture meter has audible high, medium, low alerts so you will be able to hear the level even if you are in a dark or awkward space where you can’t see the screen. The sturdy, ergonomic shape and rubber side grips allow for comfort even when using for multiple measurements. Every moisture meter also feature a hold function to freeze a reading to read later, auto power off and a low battery indicator. Every package includes extra 0.3 in. (8mm) stainless steel pins, a protective cap that doubles as a calibration checker and a “9V” battery.
DETECT MOISTURE- Determine the moisture content of wood and other building materials (like drywall) or check water damaged areas to see if moisture is still present
FIRST STEP IN MOLD PREVENTION – By checking suspicious water stains with a moisture tester around the house, you can determine whether the area is wet (a perfect breeding ground for mold) or has long since dried
ACCURACY- Stick the stainless steel pins into the surface of what you are measuring in order to get a read-out. Overall measurement range of 5 to 50% for wood and 1. 5 to 33% for building materials as well as low, medium and high moisture tones and colored green, yellow and red LED visual alerts
EASY TO READ AND USE- Large 0. 3 in. (8mm) high digits in a backlit LCD display for quick and easy viewing plus a hold function to freeze a reading, auto power off and a low battery indicator
INCLUDES- Extra 0. 3 in. (8mm) stainless steel pins, protective cap that doubles as a calibration checker and a “9V” battery'''),
  Product(
      title:
          'General Tools MMD4E Digital Moisture Meter, Water Leak Detector, Moisture Tester, Pin Type, Backlit LCD Display With Audible and Visual High-Medium-Low Moisture Content Alerts, Grays',
      id: '39',
      category: Category.tools,
      images: [
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41zK8gL-n1L._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41pqcdph9tL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/41pMD3upGL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/510bbL11lEL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/413EOkuKtiL._AC_.jpg',
        'https://www.astthim.co.uk/wp-content/uploads/2021/05/51q9go5IL._AC_.jpg',
      ],
      price: 23,
      description:
          '''The General Tools MMD4E Pin-Style Digital Moisture Meter provides accurate moisture level reading to detect leaks, dampness and moisture in wood, walls, ceiling, carpet and firewood. It is an essential tool for assessing water damage and remediation efforts after flooding from storms, hurricanes, roof leaks or broken pipes to discover hidden water damage in floors, walls and under carpets. By checking suspicious water stains with a moisture tester around the house, you can determine whether the area is wet (a perfect breeding ground for mold) or has long since dried. This water leak detector also is helpful for new home inspections and home restorations, locating roof leaks or simply to ensure firewood is ready to burn. It also ensures the appropriate level of surface dryness before painting, sealing or treating wood or drywall. The moisture meter is easy to use: simply stick the stainless steel pins into the surface of what you are measuring in order to get a read-out. Overall measurement range of 5 to 50% for wood and 1.5 to 33% for building materials. The backlit, large, easy-to-read digits and clearly-designed LED alerts tell you immediately if the moisture content is high, medium or low. Plus, the moisture meter has audible high, medium, low alerts so you will be able to hear the level even if you are in a dark or awkward space where you can’t see the screen. The sturdy, ergonomic shape and rubber side grips allow for comfort even when using for multiple measurements. Every moisture meter also feature a hold function to freeze a reading to read later, auto power off and a low battery indicator. Every package includes extra 0.3 in. (8mm) stainless steel pins, a protective cap that doubles as a calibration checker and a “9V” battery.
DETECT MOISTURE- Determine the moisture content of wood and other building materials (like drywall) or check water damaged areas to see if moisture is still present
FIRST STEP IN MOLD PREVENTION – By checking suspicious water stains with a moisture tester around the house, you can determine whether the area is wet (a perfect breeding ground for mold) or has long since dried
ACCURACY- Stick the stainless steel pins into the surface of what you are measuring in order to get a read-out. Overall measurement range of 5 to 50% for wood and 1. 5 to 33% for building materials as well as low, medium and high moisture tones and colored green, yellow and red LED visual alerts
EASY TO READ AND USE- Large 0. 3 in. (8mm) high digits in a backlit LCD display for quick and easy viewing plus a hold function to freeze a reading, auto power off and a low battery indicator
INCLUDES- Extra 0. 3 in. (8mm) stainless steel pins, protective cap that doubles as a calibration checker and a “9V” battery'''),
  Product(
      title: 'Apple AirPods Pro with MagSafe Charging Case',
      id: '40',
      category: Category.electronics,
      images: [
        'https://mcprod.jumbo.ae/media/catalog/product/1/_/1.1.543015c863.999xx_ctngsmenkhxqxmyh_dwc0fowgci90crfo.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/1/_/1.1.543015c863.999xx_ctngsmenkhxqxmyh_dwc0fowgci90crfo.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/1/_/1.1.543015c863.999xx_ctngsmenkhxqxmyh_dwc0fowgci90crfo.jpg',
      ],
      price: 999,
      description: '''Apple AirPods Pro with MagSafe Charging Case

 

With the Apple AirPods Earphones with MagSafe Charging Case, you can enjoy continuous, crystal-clear music on the go. These airpods are designed to produce high-quality sound to let you immerse yourself in your enjoyment.

 

Easy to use

 

Apple's Airpods are simple to operate. It's simple to use them; simply place them in your ears and they'll connect quickly. When you put these in your ears, they start playing music and cease when you take them out.

 

Convenient 

 

You may utilise gesture control with the Airpods to play or pause music. You won't have to struggle with tangled connections with these Airpods because they are genuinely wireless. The Apple W1 chip, which was built by a customer, lies at the heart of Airpods' technology. It provides a very stable wireless connection and significantly improves sound quality.

 

Noise cancellation

 

Active Noise Cancellation and Transparency mode are available on the AirPods Pro. Active Noise Cancellation, Transparency mode, and Off are the three noise-control modes available on AirPods Pro Depending on how much of your environment you wish to hear, you may switch between them.

 

Wireless charging

 

AirPods have a battery life of more than 24 hours when used with the MagSafe Charging Case. Wireless chargers, including MagSafe, are compatible with the charging case, making wireless charging a breeze with quick attachment for increased convenience.'''),
  Product(
      title: 'Sony 4GB B Series MP3 Walkman',
      id: '41',
      category: Category.electronics,
      images: [
        'https://mcprod.jumbo.ae/media/catalog/product/s/o/soim.27.1.74a6e6f44b.999xx_yhajdnagxcu2avqj.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/s/o/soim.27.2.1ce91a59ca.999xx_qn3nemgwqrwgtqqv.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/s/o/soim.27.3.5d2ffec47a.999xx_7rfyqiv8vv6mnx1e.jpg',
      ],
      price: 250,
      description:
          '''Perfect for travel, the Sony NWZ-B183 MP3 player is small, lightweight and functional.

 

Its distinctive design features direct USB connectivity so you can take advantage of quick charge with drag and drop. Drag and drop lets you choose the music you want to put on the device without the hassle of installing an additional programme. The USB MP3 player also features a Bass Boost function that delivers thumping bass for an immersive listening experience.

 

With a large 4GB capacity and up to 20 hours of battery life, this portable MP3 player comes supplied with headphones.

 

-Distinctive design with aluminium finish & Bass Boost function.

-4GB capacity & up to 20hr battery life.

-Comes with headphones.'''),
  Product(
      title:
          'Sony A80K 65 Inch TV XR65A80K BRAVIA XR OLED 4K UHD Smart Google TV- 2022 Model',
      id: '42',
      category: Category.electronics,
      images: [
        'https://mcprod.jumbo.ae/media/catalog/product/a/8/a80kexample.13a0f93047.999xx_nadeyalyu7z56hsj.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/4/4/444.1.77d640abcf.999xx_kmk0tiplabubqnvi.jpghttps://mcprod.jumbo.ae/media/catalog/product/4/4/444.2.fca4646f25.999xx_a8inwqhjfpumi6bb.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/4/4/444.3.67dddfe4d6.999xx_pfzzous7lwswffg3.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/4/4/444.4.23e858e693.999xx_n3ezrl9q9qgb7lj5.jpg',
      ],
      price: 7999,
      description: '''Pure OLED black and brilliant color
Step up to an immersive viewing experience with vision and sound in perfect harmony on this Sony OLED TV, powered by Cognitive Processor XR™. Enjoy exceptional pure black contrast for pictures full of depth and detail.

Next generation picture and sound with Cognitive Intelligence
Take vision and sound to the next level with Cognitive Processor XR™. Our revolutionary processor on Sony BRAVIA XR™ TVs reproduces content the way humans see and hear for an incredibly lifelike experience. It understands how the human eye focuses, cross analyzing images to give real life depth, extraordinary contrast and beautifully vivid colors.

Exceptional pure blacks for real-life depth and texture
Pairing our OLED panel with XR OLED Contrast Pro, this TV boosts color and contrast in bright areas so you can enjoy unprecedented pure blacks and peak brightness. Combined with Cognitive Processor XR™, it enhances pictures in the same way as your eyes focus so you won't miss a single detail in dazzling light or deep shadow.

Screen is the speaker, pictures and sound in harmony
Acoustic Surface Audio＋™ uses special actuators to turn the screen into a multi-channel speaker. You'll hear sound that precisely matches what’s on screen with pictures and sound in total harmony for a truly immersive experience.

Hands-free help from Google
With hands-free voice control built into Google TV, you can set aside your remote and simply use your voice to control your TV. Ask Google to find a specific title, search by genre, and get personalized recommendations on what to watch by saying, "Hey Google, what should I watch?". Even get answers on screen, control smart home devices, and more.1

Renew, recycle and reduce, designed for the environment
Our BRAVIA XR TVs are designed for immersive experiences with the environment in mind. We are committed to using less virgin plastic in large parts of our TVs and packaging. The A80K uses recycled plastics in its rear cover. Our unique backlight control technologies, BRAVIA CAM and sensors not only deliver high picture quality but also reduce power consumption.

Pure blacks for real-life depth and texture
XR OLED Contrast Pro boosts color and contrast in bright areas for exceptionally realistic pictures defined by absolute pure blacks and peak brightness. With a temperature sensor and high luminance panel, this OLED TV utilizes our Cognitive Processor XR™ to detect screen temperature and precisely control light so pixels in bright areas are illuminated simultaneously.

A wide color spectrum for real-world shades and hues
Powered by our Cognitive Processor XR™, XR Triluminos Pro enables A80K to access over a billion colors and reproduce each one with the subtle differences seen in the real world. Together with our wide color gamut panel and human-centric processor, it can detect color from saturation, hue and brightness to deliver natural shades in every detail.

Recreating lost texture, all your content upscaled to 4K
With XR 4K Upscaling, you'll enjoy entertainment close to 4K quality, whatever the content or source. Our Cognitive Processor XR™ accesses a vast amount of data, intelligently recreating lost textures and detail for real world pictures.

Intelligent motion processing for smooth, fast-moving action
Powered by our Cognitive Processor XR™, XR OLED Motion combats blur by detecting and cross analyzing key visual elements on successive frames. It creates and inserts extra frames between the original ones so you can enjoy smooth and clear action, even in fast-moving sequences.

Beautiful colors from any angle
Watching TV from the sides is now as satisfying as from the center. Our self-illuminating OLED panel keeps colors consistent and true, wherever you're watching.

Screen is the speaker, sound follows pictures precisely
Sound comes directly from the screen with Acoustic Surface Audio＋™. Triple actuators behind the TV vibrate to create acoustics that move with the picture. Two actuators on the sides also improve high frequency sound with clear and natural dialogue. Left and right subwoofers boost bass for immersive sound at home.

All your entertainment upscaled to 3D surround sound
With BRAVIA XR™, everything you watch gets the true surround sound treatment. XR Surround virtually creates surround sound from the sides and vertically using just the TV speakers, so you can experience 3D audio without the need for in-ceiling or up-firing speakers. Our BRAVIA XR™ TVs are also compatible with Dolby Atmos®.

Voice Zoom™ 2 enhances voices for clearer dialogue
Hear TV dialogue more clearly without turning up the volume. Even if speech is difficult to hear, Voice Zoom 2 detects the type of voice, analyzes it and enhances its clarity.

Perfect with Sony audio
Paired with Sony audio equipment, our latest BRAVIA XR TVs go even further, bringing you an unmatched audio-visual experience with outstanding XR picture and sound quality.

XR OLED CONTRAST PRO – Exceptional pure blacks for real-life depth and texture. TV boosts color and contrast in bright areas so you can enjoy unprecedented pure blacks and peak brightness.

COGNITIVE PROCESSOR XR – Revolutionary TV processing technology that understands how humans see and hear to deliver intense contrast with pure blacks, high peak brightness, and natural colors.

XR TRILUMINOS PRO – A wide color spectrum for real-world shades and hues. Enables to access over a billion colors and reproduce each one with the subtle differences seen in the real world.

ACOUSTIC SURFACE AUDIO+ – Screen is the speaker. Sound comes directly from the screen with Acoustic Surface Audio＋™. Triple actuators behind the TV vibrate to create acoustics that move with the picture. Two actuators on the sides also improve high frequency sound with clear and natural dialogue. Left and right subwoofers boost bass for immersive sound at home.

XR 4K Upscaling - Recreating lost texture, all your content upscaled to 4K. ou'll enjoy entertainment close to 4K quality, whatever the content or source.

3D Surround Upscaling - XR Surround virtually creates surround sound from the sides and vertically using just the TV speakers, so you can experience 3D audio without the need for in-ceiling or up-firing speakers. Our BRAVIA XR™ TVs are also compatible with Dolby Atmos®.

Google TV - Watch what you love, control it with your voice. See 700,000+ movies and TV episodes, all in one place. Google TV brings your favorite content from across your apps and subscriptions and organizes them just for you.

Perfect for PlayStation®5 - Pair your BRAVIA XR TV with a PlayStation®5 console to get a Sony-exclusive fantastic gaming experience. With immersive picture and sound, you'll feel like you're right in the middle of the action.'''),
  Product(
      title: 'Weber Master-Touch GBS E-5750 Charcoal Grill 57 cm, Black ',
      id: '43',
      category: Category.electronics,
      images: [
        'https://mcprod.jumbo.ae/media/catalog/product/1/7/17.1.jpg.8966356bd5.999xx_exmpcngxuepv2bnb_tlzgx9fi4rpxfl8s.png',
        'https://mcprod.jumbo.ae/media/catalog/product/1/7/17.1.jpg.8966356bd5.999xx_exmpcngxuepv2bnb_tlzgx9fi4rpxfl8s.png',
      ],
      price: 1700,
      description: '''
FEATURES
GOURMET BBQ SYSTEM HINGED COOKING GRATE
HEAVY-GAUGE STEEL CHARCOAL GRATE
PORCELAIN-ENAMELED BOWL AND LID
BUILT-IN LID THERMOMETER
BOTTOM WIRE RACK
LID HANDLE WITH HEAT SHIELD
TUCK-AWAY LID HOLDER
REMOVABLE, HIGH-CAPACITY, ALUMINUM ASH CATCHER
STAINLESS STEEL ONE-TOUCH CLEANING SYSTEM
SPRING CLIP/PUSH PIN LEG ASSEMBLY
BRIQUETTE MEASURING CUP INCLUDED
EASY-GRIP DAMPER HANDLE
IGRILL BRACKET
SMOKE SETTING'''),
  Product(
      title: 'BOSCH 90cm Electric Cooker HKK99V850M ',
      id: '44',
      category: Category.electronics,
      images: [
        'https://mcprod.jumbo.ae/media/catalog/product/m/c/mcsa01869111hkk99v850mrangecookerboschstpdef.7b736d40bd.999xx_z9tvt0rsvcrfwuff.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/m/c/mcsa01869100hkk99v850mrangecookerboschpga2def.a0f38cb09e.999xx_be1sal8zljbsaatv.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/m/c/mcsa01869103hkk99v850mrangecookerboschpga1def.78dd98f681.999xx_h2nlkhrv0fuegcyl.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/m/c/mcsa01869107hkk99v850mrangecookerboschpga4def.b86e394437.999xx_sz7ckmg4sulfaqdu.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/m/c/mcsa01869108hkk99v850mrangecookerboschpga3def.c3a3b1f857.999xx_6vm8j8rbxqffewxh.jpg'
      ],
      price: 4799,
      description: '''Warranty - 1 Year

BOSCH 90cm Electric Cooker HKK99V850


Give your kitchen a modern and luxurious look with a glass-ceramic top with the latest range cooker and electric oven.


•    Easy to Clean and maintain: Grease and dirt can be removed very easily and quickly. Regular cleaning is not required.


•    9 cooking functions: You can cook different dishes at the same time. Functions like defrost settings, hot air grilling, Rotisserie, pizza settings, etc.


•    5 Cooking Zones: Heat temperature is critical while cooking food. BOSCH 90cm Electric Cooker HKK99V850 gives you a 5-stage residual heat regulator to fix the heat.


•    Oven with a large capacity:  The electric cooker’s over is very large; you can bake several cakes together in it.




Warranty - 1 Year

The modern range cooker with electric oven and glass ceramic cooktop.

Full Glass Door supports quick and easy cleaning by removable inner glass of the door.

Full Catalytic cleans itself on side and rear surfaces thanks to catalytic panels while cooking with ease and pleasure.

Glass ceramic hob
5 highSpeed cooking zones including 1 dual circuit zone and 1 extendable oval zone
Front left: Dual-circuit cooking zone 2 KW, 0.7 KW
Rear left: Standard zone 1.2 KW
Center: Oval zone 1.4 KW, 2.2 KW
Rear right: Standard zone 1.8 KW
Front right: Standard zone 1.2 KW
5 stage residual heat indicator
Splash guard'''),
  Product(
      title:
          'Miele Front Load Washer WWG 660 WCS TwinDos WiFi 9kg with Miele Heat-pump Dryer TWF 640 WP EcoSpeed 8kg ',
      id: '45',
      category: Category.electronics,
      images: [
        'https://mcprod.jumbo.ae/media/catalog/product/w/w/wwg660twf6401.0aa3cc22f4.999xx_wydtfrjfgwr7wksd.jpg',
        'https://mcprod.jumbo.ae/media/catalog/product/w/w/wwg660twf6401.0aa3cc22f4.999xx_wydtfrjfgwr7wksd.jpg',
      ],
      price: 14500,
      description:
          '''Miele Front Load Washer WWG 660 WCS TwinDos WiFi 9kg with Miele Heat-pump Dryer TWF 640 WP EcoSpeed 8kg

Do you have a WWG 660 WCS washer and are looking for a dryer? Then Miele introduces the dryer TWF 640 WP EcoSpeed with modern features.

Gives perfectly dried clothes: PerfectDry technology continuously evaluates and adjusts the drying procedure to the clothes wetness degree. To reduce material entanglement, smart drum reversal is constantly on.

It saves time and the environment: Thanks to Eco speed innovation, you could successfully dry your clothing 40 times quicker with optimal power economy.

Eco-Dry technology: It includes a filtering system and an upkeep-free heat transfer mechanism for efficient and productive functioning. 

Miele Front Load Washer WWG 660 WCS TwinDos WiFi 9kg with Miele Heat-pump Dryer TWF 640 WP EcoSpeed 8kg

Do you have a WWG 660 WCS washer and are looking for a dryer? Then Miele introduces the dryer TWF 640 WP EcoSpeed with modern features.

Gives perfectly dried clothes: PerfectDry technology continuously evaluates and adjusts the drying procedure to the clothes wetness degree. To reduce material entanglement, smart drum reversal is constantly on.

It saves time and the environment: Thanks to Eco speed innovation, you could successfully dry your clothing 40 times quicker with optimal power economy.

Eco-Dry technology: It includes a filtering system and an upkeep-free heat transfer mechanism for efficient and productive functioning. 
Miele Front Load Washer WWG 660 WCS TwinDos WiFi 9kg with Miele Heat-pump Dryer TWF 640 WP EcoSpeed 8kg Do you have a WWG 660 WCS washer and are looking for a dryer? Then Miele introduces the dryer TWF 640 WP EcoSpeed with modern features. Gives perfectly dried clothes PerfectDry technology continuously evaluates and adjusts the drying procedure to the clothes wetness degree. To reduce material entanglement, smart drum reversal is constantly on. It saves time and the environment Thanks to Eco speed innovation, you could successfully dry your clothing 40 times quicker with optimal power economy. Eco-Dry technology It includes a filtering system and an upkeep-free heat transfer mechanism for efficient and productive functioning. By using this product, you are indirectly supporting a better environment. Miele Front Load Washer WWG 660 WCS TwinDos WiFi 9kg with Miele Heat-pump Dryer TWF 640 WP EcoSpeed 8kg'''),
];
