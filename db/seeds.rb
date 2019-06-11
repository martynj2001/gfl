# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: 'Sustainable Home')
Category.create(name: 'Electric Vehicles')
Category.create(name: 'Veggie Garden')
Category.create(name: 'Environment')
Category.create(name: 'Recycle & Reuse')

Post.create(title: 'Georganics Spearmint Toothpaste', content: "This come in a lovely little glass pot with a metal lid. In terms of colour and consistency it appears to look similar to clay or putty. The little wooden spatula provided is perfect for scooping out a pea sized amount of toothpaste to pop onto your toothbrush.  
    Of course, the first time you use this toothpaste you will be immediately struck by the fact that, yes, it does feels a bit like clay clagging in your mouth. For those of us who have been used to years of silky and slightly foaming toothpaste, initially this is a little bit of a shock to the sensitive nerve ending of the tongue and mouth, however I implore you to persist. You do adjust and once you add  some water and give your teeth a good scrub you may find yourself pleasantly surprised that your teeth do actually feel and look clean.   
    One little pot has lasted about the same amount of time as a large tube to toothpaste for two of us. From a financial point of view it is therefore more expensive. From a trying to live a plastic free, chemical free, sustainable living, supporting small local and national businesses point of view we have been very happy.  
    You can recycle the pot or re use it.  
    Personally, I am not a fan of the spearmint so I have ordered the peppermint option to try next. There are also other flavours to try as well – so watch this space.", category_id: 1)
Post.create(title: 'Kutis Deodorant', content: "I have been using this deodorant stick for a couple of months after it was recommended to me by a friend.So far so good. It has a subtle smell but it seems to really work.  
    It is really easy to use as it is similar to a roll on deodorant.  
    Things worth noting are that it is not an anti perspirant so it doesn’t stop you sweating it just helps you smell nice. You will also need to wash thoroughly every day. In the warmer weather the deodorant stick can become quite soft so store it away from a heat source or direct sunlight.", category_id: 1)
Post.create(title: 'Save Some Green Tooth Tabs', content: "These are fantastic! They taste like ‘normal’ toothpaste, the metal container is plastic free and recyclable but also the company sell refills of the tablets so you can just keep it and use it forever.  
    I bought these thinking they would be perfect for in my wash kit for camping/travelling but my husband and I like them so much we have been using them for every day use as well. Even my 6 year old likes them.  
    Ideally crunch them with your front teeth to make a sort of paste (I use a little bit of water as well) and then brush. Simple.", category_id: 1)
