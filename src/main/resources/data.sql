DROP TABLE IF EXISTS Post;

CREATE TABLE Post (
  id INT AUTO_INCREMENT PRIMARY KEY,
  author VARCHAR(100) NOT NULL,
  title VARCHAR(250) NOT NULL,
  text VARCHAR(2500) NOT NULL
);

INSERT INTO Post (title, author, text) VALUES
  ('Ar programavimas kenkia sveikatai?', 'Mindaugas Štuopeca', 'Allow miles wound place the leave had. To sitting subject no improve studied limited. Ye indulgence unreserved connection alteration appearance my an astonished. Up as seen sent make he they of. Her raising and himself pasture believe females. Fancy she stuff after aware merit small his. Charmed esteems luckily age out. Old there any widow law rooms. Agreed but expect repair she nay sir silent person. Direction can dependent one bed situation attempted. His she are man their spite avoid. Her pretended fulfilled extremely education yet. Satisfied did one admitting incommode tolerably how are. Sportsman delighted improving dashwoods gay instantly happiness six. Ham now amounted absolute not mistaken way pleasant whatever. At an these still no dried folly stood thing. Rapid it on hours hills it seven years. If polite he active county in spirit an. Mrs ham intention promotion engrossed assurance defective. Confined so graceful building opinions whatever trifling in. Insisted out differed ham man endeavor expenses. At on he total their he songs. Related compact effects is on settled do.'),
  ('Kaip laikyti katinus?', 'Jonas Branskienis', 'Naminės katės butą laiko savo teritorija, po kurią gali nevaržomai vaikštinėti. Idealu, kai katinėlis turi atvirą išėjimą į lauką — užtenka balkono, kurio šonus, jeigu jie iš lygaus betono, reikėtų apvynioti vielos tinkleliu ar padengti plastikine danga, kad katinėliui būtų saugiau. Katės mėgsta žaisti, bet joms galima nuo mažų dienų nustatyti ribas, kad nekiltų noras karstytis užuolaidomis ar krapštyti elektros laidus. Kai norite ką nors svarbaus pasakyti katei, naudokitės jos kalba. Švelniu murkimu galite pranešti, kad viskas gerai ir esate patenkinti. Kai supykstate ant jos, sušvokškite jos balsu. Į tokius signalus katės lengvai išmoksta reaguoti, nes jie priklauso jų pačių „žodynui“. Kates sunkiau nei šunis išmokyti atskirti atskirus žodžius, nes jos reaguoja ne į žodžio garsą, o į jį emociją. Trumpai tariant, visai nesvarbu, ką jūs sakote, svarbu — kaip sakote. Katės švarinasi mielai ir gana dažnai, tad joms nereikia jokios ypatingos kailio priežiūros kaip šunims — nei šukavimo, nei prausimo. Nebent dėl medicininių priežasčių. Po tokios medicininės vonios katinėlį reikia visada labai kruopščiai nušluostyti ir nusausinti — kitaip jūsų augintinis greitai persišaldys nuo skersvėjo ar pasigaus infekciją. Nuo pavasario iki rudens kačių lauke tyko parazitai (blusos, erkės). Tokiu atveju gali padėti specialus dirželis ant kaklo arba skystas tirpalas. Nenaudokite jokių naminių priemonių (spirito, terpentino ar žibalo), nes gali pakenkti ne tik parazitams, bet ir jūsų katinėliui. Dar viena blogybė, gresianti katinėliui, — tai žarnyno parazitai. Deja, jų dažnai pasitaiko, ypač jaunoms katėms. Veterinarijos vaistinėse parduodamos tabletės, kurių reikia įmaišyti į ėdalą. Abejotinu atveju kreipkitės į veterinarijos gydytoją. Žmogus ir katė kartu seniai.')