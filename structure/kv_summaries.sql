-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 07:36 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kidview`
--

-- --------------------------------------------------------

--
-- Table structure for table `kv_summaries`
--

CREATE TABLE `kv_summaries` (
  `id` int(11) NOT NULL,
  `chapter_number` int(10) UNSIGNED NOT NULL,
  `chapter` varchar(24) NOT NULL,
  `topic` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `class` varchar(8) NOT NULL,
  `subject` varchar(24) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kv_summaries`
--

INSERT INTO `kv_summaries` (`id`, `chapter_number`, `chapter`, `topic`, `content`, `class`, `subject`, `created_at`, `updated_at`) VALUES
(1, 1, 'CHAPTER ONE', 'LIVING THINGS – HABITAT', '<h1 style=\"text-align: center;\">CHAPTER 1</h1>\r\n<h1 style=\"text-align: center;\">&nbsp;LIVING THINGS &ndash; HABITAT</h1>\r\n<h2>1.1&nbsp;&nbsp;&nbsp; Ecology</h2>\r\n<p>The term ecology can be defined as the scientific study of organisms in relation to their environment. Ecology is usually studied in biology. It is in fact a practical science. Ecology involves:</p>\r\n<ol>\r\n<li>Finding out how living organisms depend on one another and their non-living environment for survival.</li>\r\n<li>Studying the distribution of living organisms in the environment</li>\r\n</ol>\r\n<ul>\r\n<li>Measuring factors which affect the environment.</li>\r\n</ul>\r\n<p>The environment of an organism is made up of all factors found in its surroundings which affect the organism. They consist of biotic and abiotic factors.</p>\r\n<h3>1.1.1&nbsp;&nbsp;&nbsp;&nbsp; Biotic Factors</h3>\r\n<p>Biotic consists of the living part or component of environment. Examples are:</p>\r\n<ol>\r\n<li><strong>Food producers (Autotrophs):</strong> These are organisms which can use simple inorganic materials like carbon (IV) oxide and water to make their own food (i.e. starch) e.g. green plants, protophyta and chemosynthetic bacteria.</li>\r\n<li><strong>Food Consumers (Heterotrophs): </strong>These are animals, protozoa and some bacteria which cannot manufacture their own food. They feed on plants and other animal products, e.g. man, birds, goats, sheep, dog, toads, fishes, and so on.</li>\r\n</ol>\r\n<ul>\r\n<li><strong>Decomposers (Saprophytes):</strong> Decomposers or saprophytes are organisms which break down plant and animal products by feeding on them e.g. fungi and some bacteria. The observable breakdown of tissues of plants and animals products they feed on is referred to as decay.</li>\r\n</ul>\r\n<h3>1.1.2&nbsp;&nbsp;&nbsp;&nbsp; Abiotic Factors</h3>\r\n<p>These consist of the non-living components of an environment which an organism needs in order to stay alive or survive e.g. soil, wood, rocks and so on.</p>\r\n<ol>\r\n<li><strong>Climatic Factor</strong></li>\r\n</ol>\r\n<p>Temperature, sunlight, rainfall, humidity, wind pressure, turbidity and so on.</p>\r\n<ol>\r\n<li><strong>Edaphic Factors (soil)</strong></li>\r\n</ol>\r\n<p>Soil profile, soil texture, soil water content, soil pH, humus content of the soil, inorganic nutrients like carbon (IV) oxide, nitrogen, phosphorous and so on.</p>\r\n<ul>\r\n<li><strong>Topographic Factors</strong></li>\r\n</ul>\r\n<p>Shape of the land, altitude, drainage and so on.</p>\r\n<ol>\r\n<li><strong>Chemical Factors: </strong></li>\r\n</ol>\r\n<p>Carbon (IV) oxide, nitrogen oxygen and mineral salts.</p>\r\n<h2>1.2&nbsp;&nbsp;&nbsp; Habitat</h2>\r\n<p>Habitat may be defined as the place where an organism lives. It is a place that is suitable to its way of life. For example a habitat may be small such as the elementary canal of a mammalian host where roundworms live or it may be large such as a river or ocean where fishes live. Another example of a large habitat is the savanna where the zebra could be found. The caterpillar lives on the leaves and zebra could be found in the savanna.</p>\r\n<p><strong>Examples of Habitats</strong></p>\r\n<p>There are three types of habitats, namely:</p>\r\n<ol>\r\n<li>Aquatic (water) habitat,</li>\r\n<li>Terrestrial (land) habitat and</li>\r\n</ol>\r\n<ul>\r\n<li>Arboreal (aerial) habitat</li>\r\n</ul>\r\n<h3>1.2.1&nbsp;&nbsp;&nbsp;&nbsp; Aquatic Habitat</h3>\r\n<p>This is a water habitat which may be subdivided into fresh water and salt water (marine) habitats.</p>\r\n<p>Fresh water habitat has no noticeable amount of salt in it. Some examples are rivers, ponds, streams, springs and lakes. The following plants may be found in fresh water habitats which include: chlamydomonas, blue green algae, diatoms, euglena, spirogyra, water ferns, water hyacinth, duckweed, water lettuce, water lilies and liver-wort. The animals found in fresh water habitats include larvae and pupae of mosquitoes, amoeba, paramecium, flatworms, water snails, tadpoles, dragonfly larvae, leeches, water scorpions, hydra, frogs, toads, fishes, monitor lizards, tortoises, water snakes and so on.</p>\r\n<p>Salt water habitat has a high content of salt in it. Examples are oceans and seas. Plants found in salt water habitats include sponges, seaweeds, etc. while the animals found in this habitat include crabs, lobsters, crayfish, stingray fish, crocodiles, periwinkles, sea urchins, sea cucumbers, etc.</p>\r\n<h3>1.2.2&nbsp;&nbsp;&nbsp;&nbsp; Terrestrial Habitat</h3>\r\n<p>This is a dry land habitat. In Nigeria, three local terrestrial habitats can be identified namely: Mangrove swamp, Tropical rainforest, Savanna</p>\r\n<p>These are called biomes. Biomes are large natural terrestrial units of the environment. Each biome is identified by its dominant vegetation (plants) it has. For example, a forest biome has densely packed tall trees, while grasses and a few scattered shrubs are found in a savanna biome. The type of vegetation in a biome is largely determined by climatic factors especially rainfall and temperature. There is also the semi-desert and desert biomes with little or no rainfall throughout the year and scanty (few) vegetation.</p>\r\n<ol>\r\n<li><strong>Mangrove Swamp:</strong></li>\r\n</ol>\r\n<p>These are found in the tropics along coastal regions and river moths. In Nigeria, mangrove swamps are found in the delta region of Lagos, Edo, Delta, Rivers and Cross River states. Much silt I s deposited near the river banks. This becomes muddy and water-logged when the river overflows its bank to form swamps. Plants like red and white mangrove trees and evergreen trees survive in swamps because they have&nbsp; prop roots and breathing roots. These features enable them to grow in the soft swampy areas. Animals found here may include slugs, crabs, snails, shrimps and prawns.</p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li><strong>Tropical Rain Forests:</strong></li>\r\n</ol>\r\n<p>The climate in tropical rain forest id hot and wet throughout the year. The tropical rainforest is dense and made up of many types of broad leaved trees that are mostly evergreen, i.e. The trees drop their leaves gradually throughout the year, and new leaves grow continuously to replace them. The trees form three layers. The small trees form the bottom canopy, the tall trees form the middle canopy while the very tall trees like mahogany, iroko, obeche and wlnut form the thick top canopy that prevents sunlight from reaching the forest floor. As a result, the vegetation on the forest floor is sparse. Epiphylitic plants like ferns, orchids and woody climbers grow on tall trees to receive sunlight. In Nigeria, tropical rain forests cover parts of Oyo, Delta, Edo, Imo, Cross River, Ogun, Ondo, Anambra, Enugu and Rivers States. It is usually hot and wet with temperatures of about 27⁰C. Some of the animals found in rainforests live on trees (arboreal) e.g. tree frogs, tree snakes, geckos, chameleons, bats, flying squirrels and monkeys. There may be other animals like rats, lizards, land snakes, leopards, weaver birds, hornbills, parrots and owls.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li><strong>Savanna or Tropical Grassland Biome</strong></li>\r\n</ul>\r\n<p>The savanna is usually flat for miles at a stretch. The rainfall of the savanna is insufficient to support a rich growth of trees and therefore the vegetation is mainly grasses with a few scattered shrubs in sparse population. This can prevent desert encroachment from forming. The savanna regions have a hot, wet, season which alternates with a cool dry season. In Nigeria, savanna biome is found in parts of the north such as Kaduna, Kwara, Benue, Kano, Sokoto, Bauchi, Niger and Borno States. The plants found here are mainly perennial grasses with clusters of trees. Animals found include mice, rats, snakes, squirrels, antelopes, giraffes, leopards, lions, zebra, jackals, hyenas and elephants. The common insects found here include grasshoppers, termites, locust, ants and so on. You can also see such birds as vultures, ostriches and so on.</p>\r\n<h3>1.2.3&nbsp;&nbsp;&nbsp;&nbsp; Adaptations of Living Things to their Habitats</h3>\r\n<p>Living organisms found in different types of habitats develop special features that enable them to live successfully and reproduce in a particular environment. These features may be structural, functional or behavioural. Such features are known as adaptations. Adaptation may be defined as changes in structure, function and behaviour in living organisms which enable them to adjust and survive in their environments.</p>\r\n<h3>1.2.4&nbsp;&nbsp;&nbsp;&nbsp; Relationships between Organisms in the same Habitat and what they have in common</h3>\r\n<p><strong>Aquatic Organisms</strong></p>\r\n<p>Aquatic organisms that move actively use appendages like fins which are modified for swimming. Aquatic organisms have no need to conserve water; hence, gaseous exchange occurs throughout the whole body surface or through special structures called gills. The adaptations are mainly functional.</p>\r\n<p><strong>Terrestrial Organisms</strong></p>\r\n<p>These are faced with a great problem of water loss from their bodies. Plants overcome this problem by having water proof cuticles covering their external surfaces. They also have well developed roots for the continual absorption of water from the soil. Terrestrial animals have developed exoskeletons for invertebrates which cover the entire body and with such features as scales, feathers and hair for vertebrates which reduce water loss. Vertebrates use organs such as lungs which are enclosed within the body for gaseous exchange. These animals also have excretory structures such as malphighian tubules and kidneys which are efficient at reabsorbing water and salts. Thus, in order to conserve water, terrestrial organisms adapt both functionally and structurally.</p>\r\n<h2>1.3&nbsp;&nbsp;&nbsp; Uniqueness of Human Beings</h2>\r\n<p>Man belongs to a group of vertebrates called mammals. Mammals are warm-blooded animals that have bodies covered with hair or fur. They also give birth to their young ones alive and feed them milk from their mammary glands. They have well developed brains and respire through their lungs. Other examples of mammals include, cow, goat, sheep, dog, monkey, lion, zebra, elephants and so on. Some mammals that are not well developed like the kangaroos give birth to their young ones and carry them in a pouch inside their mother&rsquo;s skin. They are fed with milk till they become very strong.</p>\r\n<h3>1.3.1&nbsp;&nbsp;&nbsp;&nbsp; Characteristics of Primates</h3>\r\n<ol>\r\n<li>Their hands are for holding things firmly</li>\r\n<li>Their hands and feet have five digits</li>\r\n<li>The position of their eyes is in front of their heads and not at the sides.</li>\r\n</ol>\r\n<p>Other primate animals include gorilla, chimpanzee, baboon and lemurs. Some of the primates have tails like monkeys and baboons while others do not have visible tails like man gorilla and chimpanzee.</p>\r\n<p>Man is unique and distinguishes himself from the rest of the primates in the following ways:</p>\r\n<ol>\r\n<li>The human brain is complex and highly developed. This helps man to coordinate and make effective use of various parts of his body especially the hands which enable man to handle and manipulate instruments and acquire new skills that help him to control and adapt to new changes in his environment and live a better life.</li>\r\n<li>The complexity and development of man&rsquo;s brain help to coordinate thinking and speech excellently well making him the most intelligent animal. Intelligence refers to the ability to learn, understand, and think in logical ways as well as recall or remember what has been learnt. Therefore, man is able to learn new things, get a=understanding of concepts and reasons in ways that enable him to solve all sorts of human and environmental problems.</li>\r\n<li>The brain enables man to develop speech as an effective means of communication using sounds and words which are understood by the people engaged in communication. By this means, man is able to learn new skills and transfer it to others. Man can communicate via different means using print, electronic media, etc. in addition to oral communication.</li>\r\n<li>Man has an S-shaped curve of his backbone which enables him to stand in an upright position and therefore maintain a good balance. Other primates find it difficult to stand upright.</li>\r\n</ol>\r\n<h2>1.4&nbsp;&nbsp;&nbsp; Measurement of Growth in Living Things</h2>\r\n<p>The growth of an organism can be measured in terms of its:</p>\r\n<ol>\r\n<li>Weight</li>\r\n<li>Length, height or width and</li>\r\n</ol>\r\n<ul>\r\n<li>Area or volume (size) over a period of time.</li>\r\n</ul>\r\n<p>In seedlings for instance, the number of leaves may be used as a growth indicator or index. Each of these growth indicators is known as a parameter of growth. The use of growth parameters or indices depends on the type of organism and its growth pattern. For instance it is possible to measure the height of a maize plant to estimate the growth but we cannot use the same parameter to assess the growth of a mouse. In such a situation, area and volume (size) measurements become very apt and can give an accurate picture of growth. However, these parameters are difficult to measure and are not so commonly used.</p>\r\n<p>Mass and length (height or width) are the most commonly used growth parameters since they are easy to measure. In most growth studies, mass may be measured as wet mass or dry mass. Wet mass is the mass of the organism under normal conditions. It is not a reliable growth indicator. Dry mass is the mass of an organism after all the water in it has been removed. Measuring growth in terms of dry mass is an accurate and reliable method of estimating an organism&rsquo;s growth. The problem with using dry mass is that the organism gets killed in the process.</p>\r\n<h2>1.5&nbsp;&nbsp;&nbsp; Growth</h2>\r\n<p><strong>Growth</strong> can be defined as a permanent increase in size and weight of an organism due to food intake and formation of new cell materials. It is one of the basic characteristics of living things and it is an irreversible permanent increase in physical size needed during development by all organisms. One of the unique features of biological growth is that the organism feeds and makes use of its food to build up its own type of cell materials. This results in changes in size and weight and to some extent in chemical composition, although it still retains its integrity and individuality. This is true because growth fundamentally involves synthesis by the organism of more materials like itself. Growth involves the following processes:</p>\r\n<ol>\r\n<li>Increase in the number of cells (cell division)</li>\r\n<li>Increase in the size of cells (cell enlargement)</li>\r\n</ol>\r\n<ul>\r\n<li>Cell differentiation, in which case some newly produced cells can diversify in structure and function and thereby becoming different from other cells</li>\r\n</ul>\r\n<p>Living cells grow by synthesizing new protoplasm. Protoplasm is a jelly-like colloidal substance conceived of as constituting the living matter of plant and animal cells and performing the basic life functions. The newly manufactured protoplasm divides into smaller cells and then repeating the process over and over as long as essential nutrients are supplied and accumulation of harmful wastes is prevented. Growth in animals is known as intercalary. This means that cell division and enlargement takes place all over the whole parts of the organism and there are increases in size and weight as a result. However, in plants, growth is described as apical This means that cell division and enlargement takes place at the root and shoot tips or apices. Plants have unlimited growth patterns. That is they grow throughout their life time. But animals on the other hand have limited growth patterns. Animals attain maturity in growth after which growth stops. The chemical requirements for growth in animals include:</p>\r\n<ol>\r\n<li>Water</li>\r\n<li>Inorganic substance like calcium, magnesium, silicon, phosphorus and carbon which are needed in large quantities for the formation of skeletal and other supporting structures</li>\r\n</ol>\r\n<ul>\r\n<li>Organic substances especially certain amino acids and fatty acids</li>\r\n</ul>\r\n<ol>\r\n<li>Accessory factors or vitamins.</li>\r\n</ol>\r\n<h2>1.6&nbsp;&nbsp;&nbsp; Growth Changes in Living Things</h2>\r\n<p>Growth is a common characteristic of living things. It occurs due to the process of cell division. Increase in height and weight of an organism are indicators that growth is taking place. Therefore measurement of changes in height and weight could be used as indices for growth. Less developed animals like the paramecium and some vertebrate animals like fishes and lizards show a pattern of unlimited growth. Their growth tends to be continuous but the growth rate reduces as they get older. In the case of some invertebrate animals like insects, these have exoskeletons that do not allow continuous growth. However, there is always rapid growth at the time when the exoskeleton is removed before the new one hardens.</p>\r\n<p>In multicellular animals like birds and mammals, these show a pattern of limited growth. An example is man which grows to the stage of sexual maturity after which there is little or no further growth taking place. Five stages in the growth pattern of a man can be identified.</p>\r\n<ul>\r\n<li>Infancy (0-2 years)</li>\r\n<li>Juvenile (Childhood, 2-12 years)</li>\r\n<li>Adolescence (12-17 years)</li>\r\n<li>Adulthood (20 years and above)</li>\r\n<li>Old age (65 years and above)</li>\r\n</ul>\r\n<p>In man, there are two periods of great rapid growth namely infancy and adolescence. Within these periods, there is fast increase in size, height and weight.</p>\r\n<p>The infancy period stretches from birth to about two years of age. At this stage, the child derives a lot of pleasure in eating and increases in size and weight. The adolescence period is between 12-17 years of age. At this stage, the child grows into puberty during which a child&rsquo;s sexual organs begin to mature in both males and females. A lot of internal and external changes go on in their bodies and these are called puberty changes. Apart from these two periods of rapid growth, growth rate slows down until he/she attains sexual maturity. Further growth in height stops. However, at old age, there is negative growth because at this stage, man begins to reduce in size and weight. For many animals including man, their growth curve is S-shaped.</p>\r\n<h3>1.6.1&nbsp;&nbsp;&nbsp;&nbsp; Characteristics of Growth in Living Organisms</h3>\r\n<ol>\r\n<li>It results in physically observable increase in size, height and weight.</li>\r\n<li>The increase is brought about by assimilation of food by the cell leading to formation of new cell materials.</li>\r\n</ol>\r\n<ul>\r\n<li>The increase is an irreversible change and therefore is permanent.</li>\r\n</ul>\r\n<p>Development in living Things</p>\r\n<p>In living things especially man, development can be seen as a series of gradual changes in the organism that result in the maturation of tissues, organs and systems of the body to effectively carry out their biological functions. It involves all the processes that lead eventually to the formation of a new animal starting from the cells derived from one or more parent individuals. While growth indicates a change in a particular stage in an organism, development involves physical, social, intellectual or mental changes in an individual. It should be noted that growth and development processes go on together at the same time.</p>\r\n<p>Development Changes in Living Things</p>\r\n<p>For man, the following stages are identifiable:</p>\r\n<p>Infancy (0-2 years)</p>\r\n<ol>\r\n<li>The newborn child looks very tender, fragile and has little or no motor control. The neck hardly carries the head but about 3-4 months, a child can hold it upright.</li>\r\n<li>The skeletons are very soft and are composed of cartilages which are fragile.</li>\r\n<li>Major milestones include rapid increase in body weight as the child feeds exclusively on breast milk for the first six months after birth. The mother&rsquo;s breast milk contains many nutrients including antibodies which give the baby immunity against infectious diseases. The first breast milk of the mother is called colostrum and is usually yellowish in color.</li>\r\n<li>The baby begins to react to certain stimuli like hunger, pain, wet nappies and other discomforts by crying.</li>\r\n<li>The newborn child begins to recognize faces and see objects. This shows brain development.</li>\r\n<li>About 4-5 months, the baby&rsquo;s neck bones are strong and can carry the head upright. Also the milk teeth begin to develop.</li>\r\n<li>About 6 months old, the baby starts rolling over and sitting up unassisted and without any support as the skeletons and muscles are becoming stronger to carry the body weight.</li>\r\n<li>About 7-8 months, the baby gradually begins to crawl and creep towards objects especially colorful ones.</li>\r\n<li>The baby makes effort to reach objects that are far from his creeping position and makes several attempts to stand up and lift his leg to walk though he falls and stands up again and again.</li>\r\n<li>9 months &ndash; 1 year, the baby purposefully begins to babble and laugh or squeal with emotions. He may have the ability to say simple words such as mama.</li>\r\n<li>The baby grows more teeth.</li>\r\n<li>Between 1-2 years, the baby is making major strides towards independence. During this toddler stage, the baby is up on his feet walking and running. He can kick a ball, walk up and down stairs with help and carries objects while moving. The baby can scribble making marks that he sees as real objects, build block towers and starts to feed by himself. Language and communication skills sharply increase as he speaks audibly well. Socially and emotionally, the baby is immature having little self-control and an unsophisticated style when playing with peers.</li>\r\n</ol>\r\n<p>Early Childhood (3-5 years)</p>\r\n<ol>\r\n<li>The baby can move well, kicking a ball with ease and even throwing a ball overhead. The child can climb on play equipment, somersault and skip. This is because the child&rsquo;s fine motor skills are rapidly developing.</li>\r\n<li>There is an increase in height which may be as a result of rapid growth and development of bones and strengthening of the muscles.</li>\r\n<li>The child can talk very well, eat on his own and help in domestic chores</li>\r\n<li>The child&rsquo;s motor and cognitive skills are rapidly developing and he can now draw geometric shapes, patterns and human figures and writes some letters of the alphabet.</li>\r\n<li>Emotionally, the child begins to build greater self-regulatory abilities and can now verbally express his feelings instead of using gestures or physical aggression.</li>\r\n<li>Socially, the child is now entering a new world where he is making his first true friends based on similar interests. The child has acquired the skills to share and take turns and can show empathy towards others. This is referred to as pre-school age.</li>\r\n</ol>\r\n<p>Childhood (6-11 years)</p>\r\n<ol>\r\n<li>At this stage, the child may rely on parents for his emotional and social needs. He begins schooling and can participate in class work.</li>\r\n<li>Girls grow taller and bigger than boys of the same age.</li>\r\n<li>Much skeletal development as the bones harden</li>\r\n<li>The child starts to lose temporary (milk) teeth which are replaced by permanent teeth.</li>\r\n<li>Physically, the child has the gross motor abilities to tackle new forms of movement in sports and dance lessons.</li>\r\n<li>Academically, the child can write the alphabets very well and can draw geometric shapes.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Puberty (12-17 years)</p>\r\n<p>At this stage, children go through a set of physical changes known as puberty. It is a short period which marks the beginning of sexual maturation in both boys and girls. Puberty is marked by the development of secondary sexual characteristics due to secretion of male and female hormones. At this stage, the body is physically ready to carry out its reproductive functions.</p>\r\n<p>Puberty Development Changes in Boys (12-14 years)&nbsp;&nbsp;&nbsp;</p>\r\n<ol>\r\n<li>Rapid increase in height and weight</li>\r\n<li>Shoulders become wider or broader</li>\r\n<li>Muscular tissues, veins, tendons stand out in the arms and legs</li>\r\n<li>Hairs grow around the armpit, chest, pubic and facial areas</li>\r\n<li>Voice becomes deeper</li>\r\n<li>The penis develops into a well mature reproductive organ</li>\r\n<li>Oily face, pimples and acne</li>\r\n<li>Mature sperms are produced</li>\r\n<li>Becomes interested in girls</li>\r\n</ol>\r\n<p><strong>Puberty Development Changes in Girls</strong></p>\r\n<ol>\r\n<li>Rapid increase in height and weight</li>\r\n<li>Hips broaden as the pelvic cavity is prepared for the possible housing of babies</li>\r\n<li>Hairs grow around the pubic and armpit regions.</li>\r\n<li>Breasts enlarge and develop fully</li>\r\n<li>Eggs are produced and ovulation begins</li>\r\n<li>Begins to experience menstruation</li>\r\n<li>Becomes interested in boys</li>\r\n<li>Oily face, pimples and acne</li>\r\n</ol>\r\n<p><strong>Adolescence</strong></p>\r\n<p>This is a period which marks the end of childhood and the beginning of adulthood. The adolescence stage is associated with a lot of crises and the adolescent needs to be counseled to protect him/her from problems associated with premarital sex, unwanted pregnancy and sexually transmitted diseases.</p>\r\n<p>Developmental Changes in Adolescence (15-17 years)</p>\r\n<ol>\r\n<li>There is rapid growth acceleration in weight and height</li>\r\n<li>He/she becomes attracted to the opposite sex</li>\r\n<li>The adolescent could sometimes be moody, irritable, angered, quarrelsome, hostile and poised for a fight</li>\r\n<li>Stubborn and disobedient to authorities including parents as a result of heightened tension and hostility</li>\r\n<li>He/she seeks to be independent of the parents and probably stay on his/her own</li>\r\n<li>He/she gets hungry very often and feeds heavily</li>\r\n<li>The adolescent becomes conscious of his/her appearance</li>\r\n</ol>\r\n<p><strong>Adulthood</strong></p>\r\n<p>In legal terms, an adult is a person who has reached the age at which he is considered responsible for his actions and therefore legally accountable for them. In most cultures, it is the age of 18 years. Young adults often describe adulthood as a period of attainment of financial independence, living away from parents, entry into the workforce and a strong sense of responsibility as key indicators of adulthood. He/she can reason and take responsible decisions. At this stage, the young adult is socially, physically and psychologically mature for parenthood.</p>\r\n<h2>1.7&nbsp;&nbsp;&nbsp; Developmental Changes in Adulthood</h2>\r\n<ol>\r\n<li>Growth in height decreases rapidly and eventually stops</li>\r\n<li>Growth in weight and muscular tissues continue</li>\r\n<li>He/she can take responsible decisions and show readiness to marry and bring up children</li>\r\n<li>Reduction in body/ organ activities due to ageing process and stress</li>\r\n<li>Shrunk, scaly and rough skin with wrinkles on the face</li>\r\n<li>Women experience menopause between 45-50 years.</li>\r\n</ol>\r\n<p><strong>Characteristic Features of Stages of Development</strong></p>\r\n<p>Developmental changes in living organisms have the following features:</p>\r\n<ol>\r\n<li>Bring body organs to the point of functional maturity</li>\r\n<li>With the maturation of the organs, they can now perform their functions actively</li>\r\n<li>Bring about permanent changes although some organs may gradually lose their ability to perform their natural functions</li>\r\n</ol>\r\n<p>Growth and developmental changes especially in man can be temporary or permanent.</p>\r\n<p>Examples of temporary developmental changes include:</p>\r\n<ol>\r\n<li>Sagging or slackness of the head in an new born baby</li>\r\n<li>Accelerated or rapid increase in height</li>\r\n<li>Pregnancy</li>\r\n<li>Wet dreams or bedwetting</li>\r\n<li>Cutting of milk teeth in new born babies</li>\r\n</ol>\r\n<p>Examples of permanent developmental changes include:</p>\r\n<ol>\r\n<li>Sexual Maturity</li>\r\n<li>Menstruation in female</li>\r\n<li>Cutting of permanent teeth</li>\r\n<li>Cognitive development and ability to understand abstract concepts as well as communicating effectively.</li>\r\n</ol>', 'JSS 2', 'Basic Science', '2021-08-17 08:12:03', '2021-08-17 08:12:03'),
(2, 2, 'CHAPTER TWO', 'CHEMICALS', '<h1 style=\"text-align: center;\">CHAPTER 2</h1>\r\n<h1 style=\"text-align: center;\">CHEMICALS</h1>\r\n<p>A chemical can be defined as a substance having a specific molecular composition which is produced by or used in a chemical process. Alternatively, it can also be defined as any substance used in or resulting from a reaction involving changes in atoms or molecules especially one derived artificially for practical use. An example is sodium chloride (common salt) NaCl. Chemicals can be classified based on the use of the chemical and the hazardous nature of the chemical.</p>\r\n<p><strong>Classification of Chemicals Based on the Use of the Chemical</strong></p>\r\n<p>The various areas of use of chemicals are Pharmaceuticals, cosmetics, nuclear, agrochemical, industrial and laboratory chemicals.</p>\r\n<p><strong>Pharmaceutical</strong></p>\r\n<p>A pharmaceutical chemical is a substance used in preparing and dispensing drugs. In this industry, the purity of the chemical (drug) is of high importance and strict regulations are applied to control the manufacture and sale of the drug. Some pharmaceutical chemicals are inorganic compounds. Examples include potassium bromide used as a sedative, bismuthtrioxocarbonate (IV) used to cure stomach disorders, mercury (II) trioxonitrate (V) used as an antiseptic for skin diseases. The organic compounds may be specific drugs for certain diseases such as paludrine and plasmoquin which are anti-malarial drugs or analgesics (pain relievers) such as paracetamol and panadol or anesthetics such as chloroform and novacaine or antibiotics such as penicillin.</p>\r\n<p><strong>Cosmetics</strong></p>\r\n<p>The cosmetic industry uses thousands of synthetic chemicals in its products designed to beautify the body by direct application. Some of these cosmetics include shampoos, lipsticks, creams, lotions and perfumes. Some of the chemicals commonly found in cosmetics are phthalates, triclosan, 1,4-dioxane, parabens, ethylene oxide, polycyclic aromatic hydrocarbons, placental extract, lead, aluminium and so on.</p>\r\n<p><strong>Agrochemical</strong></p>\r\n<p>This is a term used to refer to various chemical products used in agriculture such as fertilizers, pesticides, herbicides, fungicides and soil conditioners. They are applied to plants. Examples of fertilizers include aluminiumtrioxonitrate (V), ammoniumtetraoxosulphate (VI), urea and so on.</p>\r\n<p><strong>Industrial Chemicals</strong></p>\r\n<p>These chemicals can be used for different purposes in different industries and fields such as petrochemicals, construction, sewage treatment, desalination plants, oil and gas fields. Some examples of industrial chemicals are alcohols, acids, activated alumina, chlorides, carbonates, ethanol amines, oxides, sulphates, hydrocarbons and so on.</p>\r\n<p><strong>Laboratory Chemicals</strong></p>\r\n<p>A laboratory can be defined as a room or building equipped for scientific research, experimentation, teaching or for the manufacture of drugs and chemicals. Some common laboratory chemicals are mineral acids, bases, common organic acids, common acid-base indicators, flammable liquid and so on.</p>\r\n<p><strong>Classification of Chemicals Based on Hazardous Nature</strong></p>\r\n<p>Some chemicals are very dangerous when they make contact with the skin or poisonous when they get into the body. Therefore, such chemicals must be handled carefully so that they do not harm us. Some are in aqueous solutions (liquids) while some are solids and yet others in gaseous (or vapor) form. Hazardous and toxic substances are defined as those chemicals present in the workplace which are capable of causing harm to people. These chemical substances could be classified in the following ways:</p>\r\n<p><strong>Highly Hazardous and Toxic (Poisonous) Chemicals</strong></p>\r\n<p>These include acids, alkalis, water reactive alkali metals, sulphides, metal salts, cyanides, organic substances, radioactive substances and so on.</p>\r\n<p><strong>Moderately Hazardous and Toxic Chemicals</strong></p>\r\n<p>Examples include hydrogen peroxide, propanone, trioxocarbonate (IV) acid, sodium trioxocarbonate (IV), and ammonia solution.</p>\r\n<p><strong>Non-hazardous Chemicals</strong></p>\r\n<p>Examples include water, buffer, ion resins, alumina, silica, sodium chloride, magnesiumtetraoxosulphate (VI) and calcium acetate.</p>\r\n<p><strong>Further Classification of Chemicals</strong></p>\r\n<p>Chemicals could also be further classified as fine chemicals and heavy chemicals.</p>\r\n<p><strong>Fine Chemicals</strong></p>\r\n<p>These are chemicals manufactured in relatively small quantities for specific use. They have high degree of purity and are expensive. Examples are dyes, perfumes, drugs, photographic materials, analytical chemicals and additives for paints and fuels.</p>\r\n<p><strong>Heavy Chemicals</strong></p>\r\n<p>These are essential chemicals for all branches of industry such as glass, textile, soap, metals and paints. They are manufactured in great quantity with a relatively lower degree of purity than fine chemicals. Examples include tetraoxosulphate (VI) acid, lime, trioxonitrate (V) acid, bleaching powder, caustic potash, caustic soda and sodium trioxocarbonate (IV).</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Safety Measures When Using Chemicals</strong></p>\r\n<p>Planning, handling and maintenance of storage areas are necessary to avoid material losses, accidents and disasters. Good housekeeping and other safety measures are essential and special attention should be paid to incompatible substances, suitable location of products and climatic conditions. The following safety measures should be taken when using chemicals:</p>\r\n<ol>\r\n<li>Adhere to the manufacturers safety instruction</li>\r\n<li>Follow safety guidelines for chemical storage and handling</li>\r\n</ol>\r\n<ul>\r\n<li>Observe and adhere to safety signs and instructions on chemical packages</li>\r\n</ul>\r\n<ol>\r\n<li>Ensure proper labeling and storage of chemical</li>\r\n<li>No container of chemicals should be handled without labels containing identification of content and other relevant information regarding handling and safety</li>\r\n<li>Do not touch, taste, inhale, or allow them to spill on you</li>\r\n</ol>\r\n<ul>\r\n<li>Always wear safety materials such as a nose mask, goggle, gloves, boots, laboratory aprons/coats, etc. when visiting the laboratory or handling chemicals.</li>\r\n</ul>', 'JSS 2', 'Basic Science', '2021-08-17 08:12:03', '2021-08-17 08:12:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kv_summaries`
--
ALTER TABLE `kv_summaries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kv_summaries`
--
ALTER TABLE `kv_summaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
