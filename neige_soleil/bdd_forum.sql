-- Base de données : forum


CREATE database if not exists forum;
use forum;

-- Structure de la table category
CREATE TABLE category (
  id_cat int(11) NOT NULL,
  titre varchar(50) DEFAULT NULL,
 email varchar(50) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- Structure de la table post
--

CREATE TABLE post (
  id_p int(11) NOT NULL,
  contenu text DEFAULT NULL,
  date_p datetime DEFAULT NULL,
  id_u int(11) DEFAULT NULL,
  id_t int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- Structure de la table topic
--

CREATE TABLE topic (
  id_t int(11) NOT NULL,
  id_cat int(11) DEFAULT NULL,
  titre varchar(50) DEFAULT NULL,
  description text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- Structure de la table users
--

CREATE TABLE users (
  id_u int(11) NOT NULL,
  civ varchar(5) DEFAULT NULL, 
  firstName varchar(50) DEFAULT NULL,
  lastName varchar(50) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  mdp varchar(255) DEFAULT NULL,
  lvl int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

 ALTER TABLE category
  ADD PRIMARY KEY (id_cat);
--
-- Index pour la table post
--
ALTER TABLE post
  ADD PRIMARY KEY (id_p),
  ADD KEY id_u (id_u),
  ADD KEY id_t (id_t);

--
-- Index pour la table topic
--
ALTER TABLE topic
  ADD PRIMARY KEY (id_t),
  ADD KEY id_cat (id_cat);

--
-- Index pour la table users
--
ALTER TABLE users
  ADD PRIMARY KEY (id_u);


--
-- AUTO_INCREMENT pour la table category
--
ALTER TABLE category
  MODIFY id_cat int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table post
--
ALTER TABLE post
  MODIFY id_p int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table topic
--
ALTER TABLE topic
  MODIFY id_t int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table users
--
ALTER TABLE users
  MODIFY id_u int(11) NOT NULL AUTO_INCREMENT;


--
-- Contraintes pour la table post
--
ALTER TABLE post
  ADD CONSTRAINT post_ibfk_1 FOREIGN KEY (id_u) REFERENCES users (id_u),
  ADD CONSTRAINT post_ibfk_2 FOREIGN KEY (id_t) REFERENCES topic (id_t);

--
-- Contraintes pour la table topic
--
ALTER TABLE topic
  ADD CONSTRAINT topic_ibfk_1 FOREIGN KEY (id_cat) REFERENCES category (id_cat);
COMMIT;

