DROP TABLE IF EXISTS Comment;

CREATE TABLE Comment (
  id INT AUTO_INCREMENT PRIMARY KEY,
  author VARCHAR(100) NOT NULL,
  text VARCHAR(2500) NOT NULL,
  post_id INT,
  foreign key (post_id) references Post(id)
);

DROP TABLE IF EXISTS Post;

CREATE TABLE Post (
  id INT AUTO_INCREMENT PRIMARY KEY,
  author VARCHAR(100) NOT NULL,
  title VARCHAR(250) NOT NULL,
  text VARCHAR(2500) NOT NULL,
);

INSERT INTO Post (title, author, text) VALUES
    ('Record Wave Of African Migrants Reach US-Mexico Border, Complain Of Bad Conditions', 'Tim Pool', 'Allow miles wound place the leave had. To sitting subject no improve studied limited. Ye indulgence unreserved connection alteration appearance my an astonished. Up as seen sent make he they of. Her raising and himself pasture believe females. Fancy she stuff after aware merit small his. Charmed esteems luckily age out. Old there any widow law rooms. Agreed but expect repair she nay sir silent person. Direction can dependent one bed situation attempted. His she are man their spite avoid. Her pretended fulfilled extremely education yet. Satisfied did one admitting incommode tolerably how are. Sportsman delighted improving dashwoods gay instantly happiness six. Ham now amounted absolute not mistaken way pleasant whatever. At an these still no dried folly stood thing. Rapid it on hours hills it seven years. If polite he active county in spirit an. Mrs ham intention promotion engrossed assurance defective. Confined so graceful building opinions whatever trifling in. Insisted out differed ham man endeavor expenses. At on he total their he songs. Related compact effects is on settled do.'),
    ('Random gibberish text to use in web pages?', 'John Hanner', 'Now seven world think timed while her. Spoil large oh he rooms on since an. Am up unwilling eagerness perceived incommode. Are not windows set luckily musical hundred can. Collecting if sympathize middletons be of of reasonably. Horrible so kindness at thoughts exercise no weddings subjects. The mrs gay removed towards journey chapter females offered not. Led distrusts otherwise who may newspaper but. Last he dull am none he mile hold as.');

INSERT INTO Comment (author, text, post_id) VALUES
    ('Anonymouse', 'This is a great article, one of the best I have ever read! At an these still no dried folly stood thing. Rapid it on hours hills it seven years. If polite he active county in spirit an. Mrs ham intention promotion engrossed assurance defective. ', 1),
    ('Admin', 'Thank you for such kind words!', 1);