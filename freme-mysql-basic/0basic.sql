create database `freme`;
use `freme`;

-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: freme
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dataset_metadata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_entities` bigint(20) NOT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5icnd0b5l1mdnuw4x135dr4d6` (`owner_name`),
  CONSTRAINT `FK_5icnd0b5l1mdnuw4x135dr4d6` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataset_simple_depricated`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset_simple_depricated` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  `total_entities` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pipeline`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pipeline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `persist` bit(1) NOT NULL,
  `serialized_requests` longtext,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nhnypln8e4fcmgwcdpxgo6a5a` (`owner_name`),
  CONSTRAINT `FK_nhnypln8e4fcmgwcdpxgo6a5a` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sparqlconverter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sparqlconverter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` longtext,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1dmqqmfrxabnpoqby9kn2lk8t` (`owner_name`),
  CONSTRAINT `FK_1dmqqmfrxabnpoqby9kn2lk8t` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `template`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `endpoint` longtext,
  `endpoint_type` int(11) DEFAULT NULL,
  `label` longtext,
  `query` longtext,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sn2iyndm5xit6hp99ra2cjcc` (`owner_name`),
  CONSTRAINT `FK_sn2iyndm5xit6hp99ra2cjcc` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `token`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `token` varchar(255) NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_used_date` datetime DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `FK_n8sqc22u49sjq734av60fckcv` (`user_name`),
  CONSTRAINT `FK_n8sqc22u49sjq734av60fckcv` FOREIGN KEY (`user_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xsltconverter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xsltconverter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stylesheet` longtext,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kawpwpl5macawbswj34wifwby` (`owner_name`),
  CONSTRAINT `FK_kawpwpl5macawbswj34wifwby` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;create database `freme`;
use `freme`;

-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: freme
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dataset_metadata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_entities` bigint(20) NOT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5icnd0b5l1mdnuw4x135dr4d6` (`owner_name`),
  CONSTRAINT `FK_5icnd0b5l1mdnuw4x135dr4d6` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataset_simple_depricated`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset_simple_depricated` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  `total_entities` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pipeline`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pipeline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `persist` bit(1) NOT NULL,
  `serialized_requests` longtext,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nhnypln8e4fcmgwcdpxgo6a5a` (`owner_name`),
  CONSTRAINT `FK_nhnypln8e4fcmgwcdpxgo6a5a` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sparqlconverter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sparqlconverter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` longtext,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1dmqqmfrxabnpoqby9kn2lk8t` (`owner_name`),
  CONSTRAINT `FK_1dmqqmfrxabnpoqby9kn2lk8t` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `template`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `endpoint` longtext,
  `endpoint_type` int(11) DEFAULT NULL,
  `label` longtext,
  `query` longtext,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sn2iyndm5xit6hp99ra2cjcc` (`owner_name`),
  CONSTRAINT `FK_sn2iyndm5xit6hp99ra2cjcc` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `token`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `token` varchar(255) NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_used_date` datetime DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `FK_n8sqc22u49sjq734av60fckcv` (`user_name`),
  CONSTRAINT `FK_n8sqc22u49sjq734av60fckcv` FOREIGN KEY (`user_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xsltconverter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xsltconverter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` bigint(20) NOT NULL,
  `description` longtext,
  `visibility` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stylesheet` longtext,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kawpwpl5macawbswj34wifwby` (`owner_name`),
  CONSTRAINT `FK_kawpwpl5macawbswj34wifwby` FOREIGN KEY (`owner_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-22 16:03:32

use `freme`;

INSERT INTO `user` (`name`, `password`, `role`) VALUES ('admin','change-via-application.properties','ROLE_ADMIN');

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*!40000 ALTER TABLE `template` DISABLE KEYS */;
use `freme`;

INSERT INTO `template` (`id`, `visibility`, `owner_name`, `description`, `endpoint`, `label`, `query`, `endpoint_type`, `creation_time`)
VALUES 
(1, 1,'admin','This template enriches with a list of museums (max 10) within a 50km radius around each location entity.','http://live.dbpedia.org/sparql/','Find nearest museums','PREFIX dbpedia: <http://dbpedia.org/resource/> PREFIX dbo: <http://dbpedia.org/ontology/> PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#> CONSTRUCT {  ?museum <http://xmlns.com/foaf/0.1/based_near> <@@@entity_uri@@@> . } WHERE {  <@@@entity_uri@@@> geo:geometry ?citygeo .  OPTIONAL { ?museum rdf:type dbo:Museum . }  ?museum geo:geometry ?museumgeo .  FILTER (<bif:st_intersects>(?museumgeo, ?citygeo, 50)) } LIMIT 10',0,0),
(2, 1,'admin','The template retrieves events (max 10) related to a place. The information is retrieved from the DBpedia live SPARQL endpoint.','http://live.dbpedia.org/sparql','Events related to a place','PREFIX dbpedia: <http://dbpedia.org/resource/> PREFIX dbpedia-owl: <http://dbpedia.org/ontology/> PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#> CONSTRUCT { ?event <http://dbpedia.org/ontology/place> <@@@entity_uri@@@> . } WHERE { ?event rdf:type <http://dbpedia.org/ontology/Event> .  ?event <http://dbpedia.org/ontology/place> <@@@entity_uri@@@> .  } LIMIT 10',0,0),
(3, 1,'admin','','http://factforge.net/sparql','dataset label','PREFIX geo-pos: <http://www.w3.org/2003/01/geo/wgs84_pos#> CONSTRUCT { <@@@entity_uri@@@> geo-pos:lat ?lat . <@@@entity_uri@@@> geo-pos:long ?long . } WHERE { <@@@entity_uri@@@> geo-pos:lat ?lat . <@@@entity_uri@@@> geo-pos:long ?long . }',0,0),
(4, 1,'admin','This template enriches with a list of persons (max 10) born in locations provided in the text. This template is using Europeana SPARQL endpoint as source for information.','http://europeana.ontotext.com/sparql','Authors born in place','PREFIX edm: <http://www.europeana.eu/schemas/edm/> PREFIX ore: <http://www.openarchives.org/ore/terms/> CONSTRUCT {  ?person  <http://rdvocab.info/ElementsGr2/placeOfBirth> <@@@entity_uri@@@> ;  } WHERE {  ?person  <http://rdvocab.info/ElementsGr2/placeOfBirth> <@@@entity_uri@@@> ;  } LIMIT 10',0,0),
(5, 1,'admin','','http://europeana.ontotext.com/sparql','','PREFIX dbpedia: <http://dbpedia.org/resource/> PREFIX dbpedia-owl: <http://dbpedia.org/ontology/> PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#> CONSTRUCT { ?event <http://dbpedia.org/ontology/place> <@@@entity_uri@@@> . } WHERE { ?event rdf:type <http://dbpedia.org/ontology/@@@event_type@@@> .  ?event <http://dbpedia.org/ontology/place> <@@@entity_uri@@@> .  } LIMIT 10',0,0),
(6, 1,'admin','This template retrieves bakeries near a place within radius of 10 km. The places should be identified with DBpedia or GeoNames URIs.','http://linkedgeodata.org/sparql/','Bakeries near a place','Prefix lgdo: <http://linkedgeodata.org/ontology/> Prefix geom: <http://geovocab.org/geometry#> Prefix ogc: <http://www.opengis.net/ont/geosparql#> Prefix owl: <http://www.w3.org/2002/07/owl#> CONSTRUCT {  ?b <http://xmlns.com/foaf/0.1/based_near> <@@@entity_uri@@@> .  ?b <http://www.w3.org/2000/01/rdf-schema#label> ?label . } WHERE {  ?c    owl:sameAs <@@@entity_uri@@@> ;    geom:geometry [      ogc:asWKT ?cg    ] .  ?b    a lgdo:Bakery ;    <http://www.w3.org/2000/01/rdf-schema#label> ?label ;        geom:geometry [      ogc:asWKT ?bg    ] .    Filter(<bif:st_intersects>(?cg, ?bg, 10)) .} Limit 10',0,0),
(7, 1,'admin','This template is using a Linked Data Frament endpoint to fetch DBpedia categories for a DBpedia resource.','http://linkedgeodata.org/vsnorql/','DBpedia Categories via LDF','CONSTRUCT {  <@@@entity_uri@@@> <http://purl.org/dc/terms/subject> ?category .  ?category <http://www.w3.org/2000/01/rdf-schema#label> ?label } WHERE { <@@@entity_uri@@@> <http://purl.org/dc/terms/subject> ?category . ?category <http://www.w3.org/2000/01/rdf-schema#label> ?label }',1,0),
(8, 1,'admin','Retrieve all bakeries 10km close to a place.','http://linkedgeodata.org/vsnorql','Linked Geo Data','  PREFIX owl: <http://www.w3.org/2002/07/owl# >	PREFIX ogc: <http://www.opengis.net/ont/geosparql# >	PREFIX geom: <http://geovocab.org/geometry# >	PREFIX lgdo: <http://linkedgeodata.org/ontology/ >	CONSTRUCT {	?s <http://xmlns.com/foaf/0.1/based_near > <@@@entity_uri@@@ > .	} WHERE {	?s	a lgdo:Bakery ;	geom:geometry [ ogc:asWKT ?sg ] .	?a	owl:sameAs <@@@entity_uri@@@ > ;	geom:geometry [ ogc:asWKT ?ag ] .	FILTER(bif:st_intersects(?sg, ?ag, 10))	} LIMIT 10 ',0,0);

/*!40000 ALTER TABLE `template` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*!40000 ALTER TABLE `sparqlconverter` DISABLE KEYS */;


USE freme;

INSERT INTO `sparqlconverter` (`creation_time`, `visibility`, `name`, `owner_name`, `query`, `description`)
VALUES 
(0,1,'extract-entities-only','admin','PREFIX itsrdf: <http://www.w3.org/2005/11/its/rdf#> SELECT ?entity WHERE {?charsequence itsrdf:taIdentRef ?entity}',NULL),
(0,1,'terminology-terms-only','admin','PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\r\nselect  (lang(?anchorOf) as ?language) (str(?anchorOf) as ?anchor) ?confidence (GROUP_CONCAT(DISTINCT ?label;SEPARATOR = \", \") AS ?new_label) (GROUP_CONCAT(DISTINCT ?uri;SEPARATOR = \", \") AS ?new_uri) where {\r\n ?term <http://www.w3.org/2005/11/its/rdf#term> \"yes\".\r\n ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#annotationUnit> ?annotationUnit .\r\n  ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#anchorOf> ?anchorOf.\r\n ?annotationUnit rdfs:label ?label.\r\n ?annotationUnit <http://www.w3.org/2005/11/its/rdf#taConfidence> ?confidence.\r\n ?term <http://www.w3.org/2005/11/its/rdf#termInfoRef> ?uri\r\n}\r\ngroup by  ?annotationUnit ?confidence ?anchorOf ORDER by desc ( ?confidence )',NULL),
(0,1,'sourcelang-targetlang','admin','PREFIX nif:   <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#> PREFIX its: <http://www.w3.org/2005/11/its/rdf#> PREFIX ontolex: <http://www.w3.org/ns/lemon/ontolex#> PREFIX skos: <http://www.w3.org/2004/02/skos/core#> PREFIX itsrdf: <http://www.w3.org/2005/11/its/rdf#> PREFIX tbx: <http://tbx2rdf.lider-project.eu/tbx#> SELECT    ?annotationString ?concept ?writtenRep (lang(?writtenRep) as ?language) WHERE {   ?annotationString a nif:RFC5147String.   ?annotationString its:termInfoRef ?concept.   ?concept tbx:definition ?definition.   ?concept a skos:Concept.   ?sense ontolex:reference ?concept.   ?entry ontolex:sense ?sense.   ?entry ontolex:canonicalForm ?canonicalForm.   ?canonicalForm ontolex:writtenRep ?writtenRep. }',NULL),
(0,1,'original-and-translation','admin','SELECT ?source ?target \nWHERE {  ?s <http://www.w3.org/2005/11/its/rdf#target> ?target.  ?s <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#isString> ?source.}',NULL),
(0,1,'entities-detailed-info','admin','PREFIX itsrdf: <http://www.w3.org/2005/11/its/rdf#> prefix nif:  <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#> SELECT ?uri ?ident ?class ?string ?charbegin ?charend WHERE {?uri itsrdf:taIdentRef ?ident. ?uri itsrdf:taClassRef ?class. ?uri nif:anchorOf ?string. ?uri nif:beginIndex ?charbegin. ?uri nif:endIndex ?charend.}',NULL),
(0,1,'place-and-lat-long','admin','PREFIX xsd: <http://www.w3.org/2001/XMLSchema#> SELECT ?place ?lat ?long WHERE {  ?place <http://www.w3.org/2003/01/geo/wgs84_pos#lat> ?lat.  ?place <http://www.w3.org/2003/01/geo/wgs84_pos#long> ?long.  FILTER (datatype(?lat) = xsd:double)  FILTER (datatype(?long) = xsd:double)}',NULL),
(0,1,'museums-nearby','admin','SELECT ?place ?museum WHERE {  ?museum <http://xmlns.com/foaf/0.1/based_near> ?place.} ORDER by ?place',NULL),
(0,1,'freme-workflow-editor-terminology','admin','\nPREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\nselect  (lang(?anchorOf) as ?language) (str(?anchorOf) as ?anchor) (SAMPLE(?bIndex) as ?beginIndex) (SAMPLE(?eIndex) as ?endIndex) ?confidence (GROUP_CONCAT(DISTINCT ?label;SEPARATOR = \", \") AS ?new_label) (GROUP_CONCAT(DISTINCT ?uri;SEPARATOR = \", \") AS ?new_uri) where {\n ?term <http://www.w3.org/2005/11/its/rdf#term> \"yes\".\n ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#annotationUnit> ?annotationUnit .\n  ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#anchorOf> ?anchorOf.   \n  ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#beginIndex> ?bIndex.    \n  ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#endIndex> ?eIndex.\n ?annotationUnit rdfs:label ?label.\n ?annotationUnit <http://www.w3.org/2005/11/its/rdf#taConfidence> ?confidence.\n ?term <http://www.w3.org/2005/11/its/rdf#termInfoRef> ?uri\n}\ngroup by  ?annotationUnit ?confidence ?anchorOf ORDER by desc ( ?confidence )',NULL);

INSERT INTO `sparqlconverter` (`creation_time`, `description`, `visibility`, `name`, `query`, `owner_name`) VALUES 
(1463576321626,NULL,1,'dkt-temp-output-as-web-annotation','PREFIX itsrdf: <http://www.w3.org/2005/11/its/rdf#> \nprefix nif:  <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#> \nprefix dktnif: <http://dkt.dfki.de/ontologies/nif#> \nprefix time:  <http://www.w3.org/2006/time#>  \nCONSTRUCT \n{  _:a0 \n  <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> \n  <http://www.w3.org/ns/oa#Annotation>.\n _:a0 \n  <http://www.w3.org/ns/oa#hasTarget> \n _:b0. \n _:b0 \n  time:intervalStarts ?intervalS. _:b0 time:intervalFinishes ?intervalF. \n _:b0 \n  <http://www.w3.org/ns/oa#string> ?string. \n _:b0 \n  dktnif:meanDateStart ?meanDateStart. _:b0 dktnif:meanDateEnd ?meanDateEnd. \n _:b0 \n  <http://www.w3.org/ns/oa#hasSelector> \n _:b1 . \n _:b1 \n  <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> \n  <http://www.w3.org/ns/oa#TextPositionSelector> . \n _:b1 \n  <http://www.w3.org/ns/oa#start> ?charbegin. \n _:b1 \n  <http://www.w3.org/ns/oa#end> ?charend. } \nWHERE  { { SELECT ?uri ?string ?charbegin ?charend ?intervalS ?intervalF ?meanDateStart ?meanDateEnd WHERE { ?uri nif:beginIndex ?charbegin. ?uri nif:endIndex ?charend. OPTIONAL {?uri itsrdf:taClassRef time:TemporalEntity. ?uri time:intervalStarts ?intervalS. ?uri time:intervalFinishes ?intervalF. ?uri nif:anchorOf ?string. } OPTIONAL {?uri dktnif:meanDateStart ?meanDateStart. ?uri dktnif:meanDateEnd ?meanDateEnd} } } }','admin');


/*!40000 ALTER TABLE `sparqlconverter` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
use `freme`;

INSERT INTO `xsltconverter` (`creation_time`, `description`, `visibility`, `name`, `stylesheet`, `owner_name`)
VALUES
  (0,'Conversion of the TEI (Text Encoding Initiative) format to HTML, for further processing with e-Services.',1,'tei2temp-html','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" exclude-result-prefixes=\"tei xs\"\n    xmlns:tei=\"http://www.tei-c.org/ns/1.0\" version=\"1.0\" xmlns=\"http://www.w3.org/1999/xhtml\">\n    <xsl:output method=\"html\" indent=\"yes\"/>\n    <xsl:template match=\"/\">\n        <html>\n            <head>\n                <title>dummy title</title>\n            </head>\n            <body>\n                <div id=\"xyz1xyz\">\n                    <xsl:for-each select=\"//tei:text/tei:body//tei:p\">\n                        <xsl:variable name=\"number\">n<xsl:number level=\"any\"/></xsl:variable>\n                        <p id=\"{$number}\">\n                            <xsl:apply-templates mode=\"renameElem\"/>\n                        </p>\n                    </xsl:for-each>\n                </div>\n            </body>\n        </html>\n    </xsl:template>\n    <xsl:template mode=\"renameElem\" match=\"*\">\n        <xsl:variable name=\"attributeValuePairs\">\n            <xsl:for-each select=\"@*\">\n                <xsl:text>@@@delim@@@name:</xsl:text>\n                <xsl:value-of select=\"name()\"/>\n                <xsl:text>@@@value:</xsl:text>\n                <xsl:value-of select=\".\"/>\n                <xsl:if test=\"position() = last()\">\n                    <xsl:text>@@@delim@@@</xsl:text>\n                </xsl:if>\n            </xsl:for-each>\n        </xsl:variable>\n        <span xmlns=\"http://www.w3.org/1999/xhtml\" title=\"{$attributeValuePairs}\"\n            class=\"{concat(\'convert-\',name())}\">\n            <xsl:apply-templates mode=\"renameElem\"/>\n        </span>\n    </xsl:template>\n</xsl:stylesheet>\n','admin'),
  (0,'Conversion of the input to identical output. Can be used e.g. to transform HTML5 to XHTML5.',1,'identity-transformation','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"\n    exclude-result-prefixes=\"xs\"\n    version=\"2.0\">\n    <xsl:template match=\"node()|@*\">\n        <xsl:copy>\n            <xsl:apply-templates select=\"node()|@*\"></xsl:apply-templates>\n        </xsl:copy>\n    </xsl:template>\n</xsl:stylesheet>','admin'),
  (0,'A stylesheet that uses XSLT 3.0 functionality.',1,'xslt-30-test','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" exclude-result-prefixes=\"xs\"\n    xmlns:fn=\"http://www.w3.org/2005/xpath-functions\" version=\"3.0\">\n    <xsl:variable name=\"input\"> &lt;its:locQualityIssues xml:id=\"lq1\"\n        xmlns:its=\"http://www.w3.org/2005/11/its\"&gt; &lt;its:locQualityIssue\n        locQualityIssueType=\"misspelling\" locQualityIssueComment=\"\'c\'es\' is unknown. Could be\n        \'c\'est\'\" locQualityIssueSeverity=\"50\"/&gt; &lt;its:locQualityIssue\n        locQualityIssueType=\"typographical\" locQualityIssueComment=\"Sentence without capitalization\"\n        locQualityIssueSeverity=\"30\"/&gt; &lt;/its:locQualityIssues&gt;</xsl:variable>\n    <xsl:template match=\"/\">\n        <xsl:value-of select=\"count(fn:parse-xml($input)//*)\"/>\n    </xsl:template>\n</xsl:stylesheet>\n','admin'),
  (0,'Conversion of XLIFF 2.0 to HTML, for further processing with e-Services.',1,'xliff20-to-html','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" exclude-result-prefixes=\"xlf xs\"\n    xmlns:xlf=\"urn:oasis:names:tc:xliff:document:2.0\" version=\"1.0\" xmlns=\"http://www.w3.org/1999/xhtml\">\n    <xsl:output method=\"xml\" indent=\"yes\" omit-xml-declaration=\"yes\"/>\n    <xsl:template match=\"/\">\n        <html>\n            <head>\n                <title>@@@</title>\n                <script type=\"application/xml\">\n                    <xsl:apply-templates select=\"/\" mode=\"copyFragment\"/>\n                </script>\n            </head>\n            <body>\n                <div id=\"xyz1xyz\">\n                    <xsl:for-each select=\"//xlf:source\">\n                        <xsl:variable name=\"number\">n<xsl:number level=\"any\"/></xsl:variable>\n                        <p id=\"{$number}\">\n                            <xsl:apply-templates mode=\"renameElem\"/>\n                        </p>\n                    </xsl:for-each>\n                </div>\n            </body>\n        </html>\n    </xsl:template>\n    <xsl:template mode=\"copyFragment\" match=\"node()|@*\">\n        <xsl:copy>\n            <xsl:apply-templates select=\"node()|@*\" mode=\"copyFragment\"/>\n        </xsl:copy>\n    </xsl:template>\n    <xsl:template mode=\"copyFragment\" match=\"xlf:source\">\n        <xsl:variable name=\"number\">n<xsl:number level=\"any\"/></xsl:variable>\n        <anchor id=\"{$number}\"/>\n    </xsl:template>\n    <xsl:template mode=\"renameElem\" match=\"*\">\n        <xsl:variable name=\"attributeValuePairs\">\n            <xsl:for-each select=\"@*\">\n                <xsl:text>@@@delim@@@name:</xsl:text>\n                <xsl:value-of select=\"name()\"/>\n                <xsl:text>@@@value:</xsl:text>\n                <xsl:value-of select=\".\"/>\n                <xsl:if test=\"position() = last()\">\n                    <xsl:text>@@@delim@@@</xsl:text>\n                </xsl:if>\n            </xsl:for-each>\n        </xsl:variable>\n        <span xmlns=\"http://www.w3.org/1999/xhtml\" title=\"{$attributeValuePairs}\"\n            class=\"{concat(\'convert-\',name())}\">\n            <xsl:apply-templates mode=\"renameElem\"/>\n        </span>\n    </xsl:template>\n</xsl:stylesheet>\n','admin'),
  (0,'Stylesheet with global parameter. The parameter can be set while calling the stylesheet.',1,'xslt-with-param','<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\n    <xsl:param name=\"myparam\">set internally</xsl:param>\n    <xsl:template match=\"/\">\n        <xsl:value-of select=\"$myparam\"/>\n    </xsl:template>\n</xsl:stylesheet>','admin'),
  (0,'Conversion of HTML to XLIFF 2.0. The stylesheet currently processes only e-Entity output.',1,'html-to-xliff20','<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:itsm=\"urn:oasis:names:tc:xliff:itsm:2.1\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"\n    exclude-result-prefixes=\"xs h xlf fn\" xmlns:xlf=\"urn:oasis:names:tc:xliff:document:2.0\"\n    version=\"3.0\" xmlns:h=\"http://www.w3.org/1999/xhtml\"\n    xmlns:fn=\"http://www.w3.org/2005/xpath-functions\" xmlns=\"urn:oasis:names:tc:xliff:document:2.0\">\n    <xsl:output method=\"xml\" omit-xml-declaration=\"yes\"/>\n    <xsl:variable name=\"originalInputDoc\">\n        <xsl:copy-of select=\"fn:parse-xml(//*[local-name()=\'script\'])\"/>\n    </xsl:variable>\n    <xsl:variable name=\"htmlDoc\">\n        <xsl:copy-of select=\"/*\"/>\n    </xsl:variable>\n    <xsl:template match=\"/\">\n        <xsl:apply-templates select=\"$originalInputDoc/node()\" mode=\"copy\"/>\n    </xsl:template>\n    <xsl:template match=\"node() | @*\" mode=\"copy\">\n        <xsl:copy>\n            <xsl:apply-templates select=\"node() | @*\" mode=\"copy\"/>\n        </xsl:copy>\n    </xsl:template>\n    <xsl:template match=\"h:anchor\" mode=\"copy\">\n        <source>\n            <xsl:variable name=\"position\">n<xsl:number level=\"any\"/></xsl:variable>\n            <xsl:for-each select=\"$htmlDoc\">\n                <xsl:apply-templates select=\"//*[@id = $position]/node()\" mode=\"writeAnnotation\"/>\n            </xsl:for-each>\n        </source>\n    </xsl:template>\n    <xsl:template match=\"span[@class[starts-with(., \'convert-\')]]\" mode=\"writeAnnotation\">\n        <xsl:element name=\"{substring-after(@class,\'convert-\')}\">\n            <xsl:if test=\"string-length(@title) > 0\">\n                <xsl:call-template name=\"writeAttrs\">\n                    <xsl:with-param name=\"attList\" select=\"@title\"/>\n                </xsl:call-template>\n            </xsl:if>\n            <xsl:apply-templates mode=\"writeAnnotation\"/>\n        </xsl:element>\n    </xsl:template>\n    <xsl:template mode=\"writeAnnotation\" match=\"*[local-name()=\'span\' and @its-ta-ident-ref]\">\n        <mrk id=\"{generate-id()}\" type=\"itsm:generic\">\n            <xsl:attribute name=\"itsm:taIdentRef\">\n                <xsl:value-of select=\"@its-ta-ident-ref\"/>\n            </xsl:attribute>\n            <xsl:value-of select=\".\"/>\n        </mrk>\n    </xsl:template>\n    <xsl:template name=\"writeAttrs\">\n        <xsl:param name=\"attList\"/>\n        <xsl:variable name=\"name\"\n            select=\"substring-before(substring-after($attList, \'@@@delim@@@name:\'), \'@@@value:\')\"/>\n        <xsl:variable name=\"value\"\n            select=\"substring-before(substring-after($attList, \'@@@value:\'), \'@@@delim@@@\')\"/>\n        <xsl:if test=\"($name)\">\n            <xsl:attribute name=\"{$name}\">\n                <xsl:value-of select=\"$value\"/>\n            </xsl:attribute>\n            <xsl:variable name=\"rest\">\n                <xsl:value-of\n                    select=\"substring($attList, string-length(concat(\'@@@delim@@@name:\', $name, \'@@@value:\', $value)) + 1)\"\n                />\n            </xsl:variable>\n            <xsl:if test=\"$rest\">\n                <xsl:call-template name=\"writeAttrs\">\n                    <xsl:with-param name=\"attList\" select=\"$rest\"/>\n                </xsl:call-template>\n            </xsl:if>\n        </xsl:if>\n    </xsl:template>\n</xsl:stylesheet>\n','admin'),
  (0,'Conversion of TBX to Schema-dot-org',1,'tbx-to-schema-dot-org','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Conversion of TBX to schema-dot-org\nTested with some examples from \nhttps://github.com/cimiano/tbx2rdf/blob/master/samples/. -->\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" \n    xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:schema=\"http://schema.org/\"\n    exclude-result-prefixes=\"xs schema rdf\"\n    version=\"2.0\">\n    <xsl:output method=\"html\" indent=\"yes\"/>\n    <xsl:param name=\"outputType\">json-ld</xsl:param>\n    <xsl:template match=\"/\">\n        <xsl:choose>\n            <xsl:when test=\"$outputType=\'rdf-xml-output\'\">\n                <xsl:call-template name=\"rdf-xml-output\"/>\n            </xsl:when>\n            <xsl:when test=\"$outputType=\'json-ld\'\">\n                <xsl:call-template name=\"json-ld-output\"/>\n            </xsl:when>\n            <xsl:otherwise>\n                <xsl:call-template name=\"json-ld-output\"/>\n            </xsl:otherwise>\n        </xsl:choose>\n    </xsl:template>\n    <xsl:template name=\"json-ld-output\">\n<script type=\"application/ld+json\"><xsl:text>[</xsl:text>\n<xsl:for-each select=\"//termEntry\">\n<xsl:for-each select=\"langSet\">\n<xsl:text>{\n\"@context\": \"http://schema.org/\",</xsl:text>\n<xsl:variable name=\"pos\"><xsl:number count=\"termEntry/langSet\" level=\"single\"/></xsl:variable>\n<xsl:variable name=\"id\"><xsl:value-of select=\"concat(parent::termEntry/@id,\'-\',$pos)\"/></xsl:variable>\n<xsl:text>&#xA;\"@id\": \"</xsl:text><xsl:value-of select=\"$id\"/>\",\n<xsl:if test=\"position() &gt; 1\">\n<xsl:variable name=\"id-first-langset\"><xsl:value-of select=\"concat(parent::termEntry/@id,\'-1\')\"/></xsl:variable>\n<xsl:text>\"sameAs\" : \"</xsl:text><xsl:value-of select=\"$id-first-langset\"/>\",\n</xsl:if>\n<xsl:text>\"@type\": \"CreativeWork\",</xsl:text>\n<xsl:text>&#xA;\"inLanguage\": \"</xsl:text><xsl:value-of select=\"@xml:lang\"/>\",\n    <xsl:text>\"name\": \"</xsl:text><xsl:for-each select=\".//term\"><xsl:value-of select=\"replace(.,\'&quot;\',\'\\\\&quot;\')\"/><xsl:if test=\"not(position()=last())\">,&#x20;</xsl:if></xsl:for-each><xsl:text>\"</xsl:text>\n<xsl:text>}</xsl:text><xsl:if test=\"not(position()=last())\">,&#xA;</xsl:if>\n</xsl:for-each>\n<xsl:if test=\"not(position()=last())\">,&#xA;</xsl:if>\n</xsl:for-each>\n<xsl:text>]</xsl:text></script>\n    </xsl:template>\n    <xsl:template name=\"rdf-xml-output\">\n        <rdf:RDF xmlns:schema=\"http://schema.org/\">\n        <xsl:for-each select=\"//termEntry\">\n            <xsl:for-each select=\"langSet\">\n            <xsl:variable name=\"pos\"><xsl:number count=\"termEntry/langSet\" level=\"single\"/></xsl:variable>\n            <xsl:variable name=\"id\"><xsl:value-of select=\"concat(parent::termEntry/@id,\'-\',$pos)\"/></xsl:variable>\n            <schema:CreativeWork rdf:about=\"{$id}\">\n                <xsl:if test=\"position() &gt; 1\">\n                    <xsl:variable name=\"id-first-langset\"><xsl:value-of select=\"concat(parent::termEntry/@id,\'-1\')\"/></xsl:variable>\n                    <schema:sameAs rdf:resource=\"{$id-first-langset}\"/>\n                </xsl:if>\n                <schema:name><xsl:for-each select=\".//term\"><xsl:value-of select=\".\"/><xsl:if test=\"not(position()=last())\">,&#x20;</xsl:if></xsl:for-each><xsl:text>\"</xsl:text></schema:name>\n                <schema:inLanguage><xsl:value-of select=\"@xml:lang\"/></schema:inLanguage>\n            </schema:CreativeWork>\n            </xsl:for-each>\n        </xsl:for-each>\n        </rdf:RDF>\n    </xsl:template>\n</xsl:stylesheet>','admin'),
  (0,'Conversion of e-terminology output to schema.org',1,'e-terminology-to-schema-dot-org','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"\n    exclude-result-prefixes=\"xs rdf ontolex tbx xsd nif sr\"\n    xmlns:sr=\"http://www.w3.org/2005/sparql-results#\"\n    xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n    xmlns:ontolex=\"http://www.w3.org/ns/lemon/ontolex#\"\n    xmlns:tbx=\"http://tbx2rdf.lider-project.eu/tbx#\"\n    xmlns:xsd=\"http://www.w3.org/2001/XMLSchema#\"\n    xmlns:nif=\"http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#\" \n    version=\"2.0\">\n    <xsl:output method=\"html\" indent=\"yes\"/>\n    <xsl:template match=\"/\">\n        <script type=\"application/ld+json\"><xsl:text>[&#xA;</xsl:text>\n            <xsl:for-each select=\"/sr:sparql/sr:results/sr:result[sr:binding[@name=\'lexEntry\']]\">\n                    <xsl:text>{\n\"@context\": \"http://schema.org/\", &#xA;\"@id\" : \"</xsl:text> <xsl:value-of select=\"sr:binding[@name=\'lexEntry\']/sr:literal\"/><xsl:text>\",&#xA;\"type\" : \"CreativeWork\",&#xA;\"inLanguage\" : \"EN\",</xsl:text>\n                <xsl:text>&#xA;\"name\" : \"</xsl:text><xsl:value-of select=\"sr:binding[@name=\'new_writtenRep\']/sr:literal\"/><xsl:text>\"&#xA;}</xsl:text> \n                <xsl:if test=\"not(position()=last())\">,&#xA;</xsl:if>\n            </xsl:for-each>\n            <xsl:text>&#xA;,&#xA;</xsl:text>\n            <xsl:for-each select=\"/sr:sparql/sr:results/sr:result[sr:binding[@name=\'new_delexEntry\']]\">\n                <xsl:text>{\n\"@context\": \"http://schema.org/\", &#xA;\"@id\" : \"</xsl:text> <xsl:value-of select=\"concat(sr:binding[@name=\'lexEntry\']/sr:literal,\'-in-de\')\"/><xsl:text>\",&#xA;\"type\" : \"CreativeWork\",&#xA;\"inLanguage\" : \"DE\",</xsl:text>\n                <xsl:text>&#xA;\"name\" : \"</xsl:text><xsl:value-of select=\"sr:binding[@name=\'new_dewrittenRep\']/sr:literal\"/>\n                <xsl:text>\",&#xA;\"sameAs\" : \"</xsl:text><xsl:value-of select=\"sr:binding[@name=\'lexEntry\']/sr:literal\"/>\n                <xsl:text>\"&#xA;}</xsl:text> \n                <xsl:if test=\"not(position()=last())\">,&#xA;</xsl:if>\n            </xsl:for-each>\n            <xsl:text>&#xA;]</xsl:text>\n        </script>\n    </xsl:template>\n</xsl:stylesheet>','admin');
  
  
INSERT INTO `pipeline` (`id`, `creation_time`, `description`, `visibility`, `label`, `persist`, `serialized_requests`, `owner_name`) VALUES 
(9,1474670806358,NULL,1,'terms-to-schema-dot-org','','[ {\n  \"method\" : \"POST\",\n  \"endpoint\" : \"http://api-dev.freme-project.eu/current/e-terminology/tilde\",\n  \"parameters\" : {\n    \"source-lang\" : \"en\",\n    \"target-lang\" : \"de\",\n    \"filter\" : \"terms-basic-infos\"\n  },\n  \"headers\" : {\n    \"accept\" : \"text/xml\"\n  },\n  \"body\" : null\n}, {\n  \"method\" : \"POST\",\n  \"endpoint\" : \"http://api-dev.freme-project.eu/current/toolbox/xslt-converter/documents/e-terminology-to-schema-dot-org\",\n  \"parameters\" : { },\n  \"headers\" : {\n    \"content-type\" : \"text/xml\",\n    \"accept\" : \"text/xml\"\n  },\n  \"body\" : null\n} ]','admin');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-22 16:03:32

use `freme`;

INSERT INTO `user` (`name`, `password`, `role`) VALUES ('admin','change-via-application.properties','ROLE_ADMIN');

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*!40000 ALTER TABLE `template` DISABLE KEYS */;
use `freme`;

INSERT INTO `template` (`id`, `visibility`, `owner_name`, `description`, `endpoint`, `label`, `query`, `endpoint_type`, `creation_time`)
VALUES 
(1, 1,'admin','This template enriches with a list of museums (max 10) within a 50km radius around each location entity.','http://live.dbpedia.org/sparql/','Find nearest museums','PREFIX dbpedia: <http://dbpedia.org/resource/> PREFIX dbo: <http://dbpedia.org/ontology/> PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#> CONSTRUCT {  ?museum <http://xmlns.com/foaf/0.1/based_near> <@@@entity_uri@@@> . } WHERE {  <@@@entity_uri@@@> geo:geometry ?citygeo .  OPTIONAL { ?museum rdf:type dbo:Museum . }  ?museum geo:geometry ?museumgeo .  FILTER (<bif:st_intersects>(?museumgeo, ?citygeo, 50)) } LIMIT 10',0,0),
(2, 1,'admin','The template retrieves events (max 10) related to a place. The information is retrieved from the DBpedia live SPARQL endpoint.','http://live.dbpedia.org/sparql','Events related to a place','PREFIX dbpedia: <http://dbpedia.org/resource/> PREFIX dbpedia-owl: <http://dbpedia.org/ontology/> PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#> CONSTRUCT { ?event <http://dbpedia.org/ontology/place> <@@@entity_uri@@@> . } WHERE { ?event rdf:type <http://dbpedia.org/ontology/Event> .  ?event <http://dbpedia.org/ontology/place> <@@@entity_uri@@@> .  } LIMIT 10',0,0),
(3, 1,'admin','','http://factforge.net/sparql','dataset label','PREFIX geo-pos: <http://www.w3.org/2003/01/geo/wgs84_pos#> CONSTRUCT { <@@@entity_uri@@@> geo-pos:lat ?lat . <@@@entity_uri@@@> geo-pos:long ?long . } WHERE { <@@@entity_uri@@@> geo-pos:lat ?lat . <@@@entity_uri@@@> geo-pos:long ?long . }',0,0),
(4, 1,'admin','This template enriches with a list of persons (max 10) born in locations provided in the text. This template is using Europeana SPARQL endpoint as source for information.','http://europeana.ontotext.com/sparql','Authors born in place','PREFIX edm: <http://www.europeana.eu/schemas/edm/> PREFIX ore: <http://www.openarchives.org/ore/terms/> CONSTRUCT {  ?person  <http://rdvocab.info/ElementsGr2/placeOfBirth> <@@@entity_uri@@@> ;  } WHERE {  ?person  <http://rdvocab.info/ElementsGr2/placeOfBirth> <@@@entity_uri@@@> ;  } LIMIT 10',0,0),
(5, 1,'admin','','http://europeana.ontotext.com/sparql','','PREFIX dbpedia: <http://dbpedia.org/resource/> PREFIX dbpedia-owl: <http://dbpedia.org/ontology/> PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#> CONSTRUCT { ?event <http://dbpedia.org/ontology/place> <@@@entity_uri@@@> . } WHERE { ?event rdf:type <http://dbpedia.org/ontology/@@@event_type@@@> .  ?event <http://dbpedia.org/ontology/place> <@@@entity_uri@@@> .  } LIMIT 10',0,0),
(6, 1,'admin','This template retrieves bakeries near a place within radius of 10 km. The places should be identified with DBpedia or GeoNames URIs.','http://linkedgeodata.org/sparql/','Bakeries near a place','Prefix lgdo: <http://linkedgeodata.org/ontology/> Prefix geom: <http://geovocab.org/geometry#> Prefix ogc: <http://www.opengis.net/ont/geosparql#> Prefix owl: <http://www.w3.org/2002/07/owl#> CONSTRUCT {  ?b <http://xmlns.com/foaf/0.1/based_near> <@@@entity_uri@@@> .  ?b <http://www.w3.org/2000/01/rdf-schema#label> ?label . } WHERE {  ?c    owl:sameAs <@@@entity_uri@@@> ;    geom:geometry [      ogc:asWKT ?cg    ] .  ?b    a lgdo:Bakery ;    <http://www.w3.org/2000/01/rdf-schema#label> ?label ;        geom:geometry [      ogc:asWKT ?bg    ] .    Filter(<bif:st_intersects>(?cg, ?bg, 10)) .} Limit 10',0,0),
(7, 1,'admin','This template is using a Linked Data Frament endpoint to fetch DBpedia categories for a DBpedia resource.','http://linkedgeodata.org/vsnorql/','DBpedia Categories via LDF','CONSTRUCT {  <@@@entity_uri@@@> <http://purl.org/dc/terms/subject> ?category .  ?category <http://www.w3.org/2000/01/rdf-schema#label> ?label } WHERE { <@@@entity_uri@@@> <http://purl.org/dc/terms/subject> ?category . ?category <http://www.w3.org/2000/01/rdf-schema#label> ?label }',1,0),
(8, 1,'admin','Retrieve all bakeries 10km close to a place.','http://linkedgeodata.org/vsnorql','Linked Geo Data','  PREFIX owl: <http://www.w3.org/2002/07/owl# >	PREFIX ogc: <http://www.opengis.net/ont/geosparql# >	PREFIX geom: <http://geovocab.org/geometry# >	PREFIX lgdo: <http://linkedgeodata.org/ontology/ >	CONSTRUCT {	?s <http://xmlns.com/foaf/0.1/based_near > <@@@entity_uri@@@ > .	} WHERE {	?s	a lgdo:Bakery ;	geom:geometry [ ogc:asWKT ?sg ] .	?a	owl:sameAs <@@@entity_uri@@@ > ;	geom:geometry [ ogc:asWKT ?ag ] .	FILTER(bif:st_intersects(?sg, ?ag, 10))	} LIMIT 10 ',0,0);

/*!40000 ALTER TABLE `template` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*!40000 ALTER TABLE `sparqlconverter` DISABLE KEYS */;


USE freme;

INSERT INTO `sparqlconverter` (`creation_time`, `visibility`, `name`, `owner_name`, `query`, `description`)
VALUES 
(0,1,'extract-entities-only','admin','PREFIX itsrdf: <http://www.w3.org/2005/11/its/rdf#> SELECT ?entity WHERE {?charsequence itsrdf:taIdentRef ?entity}',NULL),
(0,1,'terminology-terms-only','admin','PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\r\nselect  (lang(?anchorOf) as ?language) (str(?anchorOf) as ?anchor) ?confidence (GROUP_CONCAT(DISTINCT ?label;SEPARATOR = \", \") AS ?new_label) (GROUP_CONCAT(DISTINCT ?uri;SEPARATOR = \", \") AS ?new_uri) where {\r\n ?term <http://www.w3.org/2005/11/its/rdf#term> \"yes\".\r\n ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#annotationUnit> ?annotationUnit .\r\n  ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#anchorOf> ?anchorOf.\r\n ?annotationUnit rdfs:label ?label.\r\n ?annotationUnit <http://www.w3.org/2005/11/its/rdf#taConfidence> ?confidence.\r\n ?term <http://www.w3.org/2005/11/its/rdf#termInfoRef> ?uri\r\n}\r\ngroup by  ?annotationUnit ?confidence ?anchorOf ORDER by desc ( ?confidence )',NULL),
(0,1,'sourcelang-targetlang','admin','PREFIX nif:   <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#> PREFIX its: <http://www.w3.org/2005/11/its/rdf#> PREFIX ontolex: <http://www.w3.org/ns/lemon/ontolex#> PREFIX skos: <http://www.w3.org/2004/02/skos/core#> PREFIX itsrdf: <http://www.w3.org/2005/11/its/rdf#> PREFIX tbx: <http://tbx2rdf.lider-project.eu/tbx#> SELECT    ?annotationString ?concept ?writtenRep (lang(?writtenRep) as ?language) WHERE {   ?annotationString a nif:RFC5147String.   ?annotationString its:termInfoRef ?concept.   ?concept tbx:definition ?definition.   ?concept a skos:Concept.   ?sense ontolex:reference ?concept.   ?entry ontolex:sense ?sense.   ?entry ontolex:canonicalForm ?canonicalForm.   ?canonicalForm ontolex:writtenRep ?writtenRep. }',NULL),
(0,1,'original-and-translation','admin','SELECT ?source ?target \nWHERE {  ?s <http://www.w3.org/2005/11/its/rdf#target> ?target.  ?s <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#isString> ?source.}',NULL),
(0,1,'entities-detailed-info','admin','PREFIX itsrdf: <http://www.w3.org/2005/11/its/rdf#> prefix nif:  <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#> SELECT ?uri ?ident ?class ?string ?charbegin ?charend WHERE {?uri itsrdf:taIdentRef ?ident. ?uri itsrdf:taClassRef ?class. ?uri nif:anchorOf ?string. ?uri nif:beginIndex ?charbegin. ?uri nif:endIndex ?charend.}',NULL),
(0,1,'place-and-lat-long','admin','PREFIX xsd: <http://www.w3.org/2001/XMLSchema#> SELECT ?place ?lat ?long WHERE {  ?place <http://www.w3.org/2003/01/geo/wgs84_pos#lat> ?lat.  ?place <http://www.w3.org/2003/01/geo/wgs84_pos#long> ?long.  FILTER (datatype(?lat) = xsd:double)  FILTER (datatype(?long) = xsd:double)}',NULL),
(0,1,'museums-nearby','admin','SELECT ?place ?museum WHERE {  ?museum <http://xmlns.com/foaf/0.1/based_near> ?place.} ORDER by ?place',NULL),
(0,1,'freme-workflow-editor-terminology','admin','\nPREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\nselect  (lang(?anchorOf) as ?language) (str(?anchorOf) as ?anchor) (SAMPLE(?bIndex) as ?beginIndex) (SAMPLE(?eIndex) as ?endIndex) ?confidence (GROUP_CONCAT(DISTINCT ?label;SEPARATOR = \", \") AS ?new_label) (GROUP_CONCAT(DISTINCT ?uri;SEPARATOR = \", \") AS ?new_uri) where {\n ?term <http://www.w3.org/2005/11/its/rdf#term> \"yes\".\n ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#annotationUnit> ?annotationUnit .\n  ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#anchorOf> ?anchorOf.   \n  ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#beginIndex> ?bIndex.    \n  ?term <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#endIndex> ?eIndex.\n ?annotationUnit rdfs:label ?label.\n ?annotationUnit <http://www.w3.org/2005/11/its/rdf#taConfidence> ?confidence.\n ?term <http://www.w3.org/2005/11/its/rdf#termInfoRef> ?uri\n}\ngroup by  ?annotationUnit ?confidence ?anchorOf ORDER by desc ( ?confidence )',NULL);

INSERT INTO `sparqlconverter` (`creation_time`, `description`, `visibility`, `name`, `query`, `owner_name`) VALUES 
(1463576321626,NULL,1,'dkt-temp-output-as-web-annotation','PREFIX itsrdf: <http://www.w3.org/2005/11/its/rdf#> \nprefix nif:  <http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#> \nprefix dktnif: <http://dkt.dfki.de/ontologies/nif#> \nprefix time:  <http://www.w3.org/2006/time#>  \nCONSTRUCT \n{  _:a0 \n  <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> \n  <http://www.w3.org/ns/oa#Annotation>.\n _:a0 \n  <http://www.w3.org/ns/oa#hasTarget> \n _:b0. \n _:b0 \n  time:intervalStarts ?intervalS. _:b0 time:intervalFinishes ?intervalF. \n _:b0 \n  <http://www.w3.org/ns/oa#string> ?string. \n _:b0 \n  dktnif:meanDateStart ?meanDateStart. _:b0 dktnif:meanDateEnd ?meanDateEnd. \n _:b0 \n  <http://www.w3.org/ns/oa#hasSelector> \n _:b1 . \n _:b1 \n  <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> \n  <http://www.w3.org/ns/oa#TextPositionSelector> . \n _:b1 \n  <http://www.w3.org/ns/oa#start> ?charbegin. \n _:b1 \n  <http://www.w3.org/ns/oa#end> ?charend. } \nWHERE  { { SELECT ?uri ?string ?charbegin ?charend ?intervalS ?intervalF ?meanDateStart ?meanDateEnd WHERE { ?uri nif:beginIndex ?charbegin. ?uri nif:endIndex ?charend. OPTIONAL {?uri itsrdf:taClassRef time:TemporalEntity. ?uri time:intervalStarts ?intervalS. ?uri time:intervalFinishes ?intervalF. ?uri nif:anchorOf ?string. } OPTIONAL {?uri dktnif:meanDateStart ?meanDateStart. ?uri dktnif:meanDateEnd ?meanDateEnd} } } }','admin');


/*!40000 ALTER TABLE `sparqlconverter` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
use `freme`;

INSERT INTO `xsltconverter` (`creation_time`, `description`, `visibility`, `name`, `stylesheet`, `owner_name`)
VALUES
  (0,'Conversion of the TEI (Text Encoding Initiative) format to HTML, for further processing with e-Services.',1,'tei2temp-html','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" exclude-result-prefixes=\"tei xs\"\n    xmlns:tei=\"http://www.tei-c.org/ns/1.0\" version=\"1.0\" xmlns=\"http://www.w3.org/1999/xhtml\">\n    <xsl:output method=\"html\" indent=\"yes\"/>\n    <xsl:template match=\"/\">\n        <html>\n            <head>\n                <title>dummy title</title>\n            </head>\n            <body>\n                <div id=\"xyz1xyz\">\n                    <xsl:for-each select=\"//tei:text/tei:body//tei:p\">\n                        <xsl:variable name=\"number\">n<xsl:number level=\"any\"/></xsl:variable>\n                        <p id=\"{$number}\">\n                            <xsl:apply-templates mode=\"renameElem\"/>\n                        </p>\n                    </xsl:for-each>\n                </div>\n            </body>\n        </html>\n    </xsl:template>\n    <xsl:template mode=\"renameElem\" match=\"*\">\n        <xsl:variable name=\"attributeValuePairs\">\n            <xsl:for-each select=\"@*\">\n                <xsl:text>@@@delim@@@name:</xsl:text>\n                <xsl:value-of select=\"name()\"/>\n                <xsl:text>@@@value:</xsl:text>\n                <xsl:value-of select=\".\"/>\n                <xsl:if test=\"position() = last()\">\n                    <xsl:text>@@@delim@@@</xsl:text>\n                </xsl:if>\n            </xsl:for-each>\n        </xsl:variable>\n        <span xmlns=\"http://www.w3.org/1999/xhtml\" title=\"{$attributeValuePairs}\"\n            class=\"{concat(\'convert-\',name())}\">\n            <xsl:apply-templates mode=\"renameElem\"/>\n        </span>\n    </xsl:template>\n</xsl:stylesheet>\n','admin'),
  (0,'Conversion of the input to identical output. Can be used e.g. to transform HTML5 to XHTML5.',1,'identity-transformation','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"\n    exclude-result-prefixes=\"xs\"\n    version=\"2.0\">\n    <xsl:template match=\"node()|@*\">\n        <xsl:copy>\n            <xsl:apply-templates select=\"node()|@*\"></xsl:apply-templates>\n        </xsl:copy>\n    </xsl:template>\n</xsl:stylesheet>','admin'),
  (0,'A stylesheet that uses XSLT 3.0 functionality.',1,'xslt-30-test','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" exclude-result-prefixes=\"xs\"\n    xmlns:fn=\"http://www.w3.org/2005/xpath-functions\" version=\"3.0\">\n    <xsl:variable name=\"input\"> &lt;its:locQualityIssues xml:id=\"lq1\"\n        xmlns:its=\"http://www.w3.org/2005/11/its\"&gt; &lt;its:locQualityIssue\n        locQualityIssueType=\"misspelling\" locQualityIssueComment=\"\'c\'es\' is unknown. Could be\n        \'c\'est\'\" locQualityIssueSeverity=\"50\"/&gt; &lt;its:locQualityIssue\n        locQualityIssueType=\"typographical\" locQualityIssueComment=\"Sentence without capitalization\"\n        locQualityIssueSeverity=\"30\"/&gt; &lt;/its:locQualityIssues&gt;</xsl:variable>\n    <xsl:template match=\"/\">\n        <xsl:value-of select=\"count(fn:parse-xml($input)//*)\"/>\n    </xsl:template>\n</xsl:stylesheet>\n','admin'),
  (0,'Conversion of XLIFF 2.0 to HTML, for further processing with e-Services.',1,'xliff20-to-html','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" exclude-result-prefixes=\"xlf xs\"\n    xmlns:xlf=\"urn:oasis:names:tc:xliff:document:2.0\" version=\"1.0\" xmlns=\"http://www.w3.org/1999/xhtml\">\n    <xsl:output method=\"xml\" indent=\"yes\" omit-xml-declaration=\"yes\"/>\n    <xsl:template match=\"/\">\n        <html>\n            <head>\n                <title>@@@</title>\n                <script type=\"application/xml\">\n                    <xsl:apply-templates select=\"/\" mode=\"copyFragment\"/>\n                </script>\n            </head>\n            <body>\n                <div id=\"xyz1xyz\">\n                    <xsl:for-each select=\"//xlf:source\">\n                        <xsl:variable name=\"number\">n<xsl:number level=\"any\"/></xsl:variable>\n                        <p id=\"{$number}\">\n                            <xsl:apply-templates mode=\"renameElem\"/>\n                        </p>\n                    </xsl:for-each>\n                </div>\n            </body>\n        </html>\n    </xsl:template>\n    <xsl:template mode=\"copyFragment\" match=\"node()|@*\">\n        <xsl:copy>\n            <xsl:apply-templates select=\"node()|@*\" mode=\"copyFragment\"/>\n        </xsl:copy>\n    </xsl:template>\n    <xsl:template mode=\"copyFragment\" match=\"xlf:source\">\n        <xsl:variable name=\"number\">n<xsl:number level=\"any\"/></xsl:variable>\n        <anchor id=\"{$number}\"/>\n    </xsl:template>\n    <xsl:template mode=\"renameElem\" match=\"*\">\n        <xsl:variable name=\"attributeValuePairs\">\n            <xsl:for-each select=\"@*\">\n                <xsl:text>@@@delim@@@name:</xsl:text>\n                <xsl:value-of select=\"name()\"/>\n                <xsl:text>@@@value:</xsl:text>\n                <xsl:value-of select=\".\"/>\n                <xsl:if test=\"position() = last()\">\n                    <xsl:text>@@@delim@@@</xsl:text>\n                </xsl:if>\n            </xsl:for-each>\n        </xsl:variable>\n        <span xmlns=\"http://www.w3.org/1999/xhtml\" title=\"{$attributeValuePairs}\"\n            class=\"{concat(\'convert-\',name())}\">\n            <xsl:apply-templates mode=\"renameElem\"/>\n        </span>\n    </xsl:template>\n</xsl:stylesheet>\n','admin'),
  (0,'Stylesheet with global parameter. The parameter can be set while calling the stylesheet.',1,'xslt-with-param','<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\n    <xsl:param name=\"myparam\">set internally</xsl:param>\n    <xsl:template match=\"/\">\n        <xsl:value-of select=\"$myparam\"/>\n    </xsl:template>\n</xsl:stylesheet>','admin'),
  (0,'Conversion of HTML to XLIFF 2.0. The stylesheet currently processes only e-Entity output.',1,'html-to-xliff20','<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:itsm=\"urn:oasis:names:tc:xliff:itsm:2.1\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"\n    exclude-result-prefixes=\"xs h xlf fn\" xmlns:xlf=\"urn:oasis:names:tc:xliff:document:2.0\"\n    version=\"3.0\" xmlns:h=\"http://www.w3.org/1999/xhtml\"\n    xmlns:fn=\"http://www.w3.org/2005/xpath-functions\" xmlns=\"urn:oasis:names:tc:xliff:document:2.0\">\n    <xsl:output method=\"xml\" omit-xml-declaration=\"yes\"/>\n    <xsl:variable name=\"originalInputDoc\">\n        <xsl:copy-of select=\"fn:parse-xml(//*[local-name()=\'script\'])\"/>\n    </xsl:variable>\n    <xsl:variable name=\"htmlDoc\">\n        <xsl:copy-of select=\"/*\"/>\n    </xsl:variable>\n    <xsl:template match=\"/\">\n        <xsl:apply-templates select=\"$originalInputDoc/node()\" mode=\"copy\"/>\n    </xsl:template>\n    <xsl:template match=\"node() | @*\" mode=\"copy\">\n        <xsl:copy>\n            <xsl:apply-templates select=\"node() | @*\" mode=\"copy\"/>\n        </xsl:copy>\n    </xsl:template>\n    <xsl:template match=\"h:anchor\" mode=\"copy\">\n        <source>\n            <xsl:variable name=\"position\">n<xsl:number level=\"any\"/></xsl:variable>\n            <xsl:for-each select=\"$htmlDoc\">\n                <xsl:apply-templates select=\"//*[@id = $position]/node()\" mode=\"writeAnnotation\"/>\n            </xsl:for-each>\n        </source>\n    </xsl:template>\n    <xsl:template match=\"span[@class[starts-with(., \'convert-\')]]\" mode=\"writeAnnotation\">\n        <xsl:element name=\"{substring-after(@class,\'convert-\')}\">\n            <xsl:if test=\"string-length(@title) > 0\">\n                <xsl:call-template name=\"writeAttrs\">\n                    <xsl:with-param name=\"attList\" select=\"@title\"/>\n                </xsl:call-template>\n            </xsl:if>\n            <xsl:apply-templates mode=\"writeAnnotation\"/>\n        </xsl:element>\n    </xsl:template>\n    <xsl:template mode=\"writeAnnotation\" match=\"*[local-name()=\'span\' and @its-ta-ident-ref]\">\n        <mrk id=\"{generate-id()}\" type=\"itsm:generic\">\n            <xsl:attribute name=\"itsm:taIdentRef\">\n                <xsl:value-of select=\"@its-ta-ident-ref\"/>\n            </xsl:attribute>\n            <xsl:value-of select=\".\"/>\n        </mrk>\n    </xsl:template>\n    <xsl:template name=\"writeAttrs\">\n        <xsl:param name=\"attList\"/>\n        <xsl:variable name=\"name\"\n            select=\"substring-before(substring-after($attList, \'@@@delim@@@name:\'), \'@@@value:\')\"/>\n        <xsl:variable name=\"value\"\n            select=\"substring-before(substring-after($attList, \'@@@value:\'), \'@@@delim@@@\')\"/>\n        <xsl:if test=\"($name)\">\n            <xsl:attribute name=\"{$name}\">\n                <xsl:value-of select=\"$value\"/>\n            </xsl:attribute>\n            <xsl:variable name=\"rest\">\n                <xsl:value-of\n                    select=\"substring($attList, string-length(concat(\'@@@delim@@@name:\', $name, \'@@@value:\', $value)) + 1)\"\n                />\n            </xsl:variable>\n            <xsl:if test=\"$rest\">\n                <xsl:call-template name=\"writeAttrs\">\n                    <xsl:with-param name=\"attList\" select=\"$rest\"/>\n                </xsl:call-template>\n            </xsl:if>\n        </xsl:if>\n    </xsl:template>\n</xsl:stylesheet>\n','admin'),
  (0,'Conversion of TBX to Schema-dot-org',1,'tbx-to-schema-dot-org','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Conversion of TBX to schema-dot-org\nTested with some examples from \nhttps://github.com/cimiano/tbx2rdf/blob/master/samples/. -->\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" \n    xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:schema=\"http://schema.org/\"\n    exclude-result-prefixes=\"xs schema rdf\"\n    version=\"2.0\">\n    <xsl:output method=\"html\" indent=\"yes\"/>\n    <xsl:param name=\"outputType\">json-ld</xsl:param>\n    <xsl:template match=\"/\">\n        <xsl:choose>\n            <xsl:when test=\"$outputType=\'rdf-xml-output\'\">\n                <xsl:call-template name=\"rdf-xml-output\"/>\n            </xsl:when>\n            <xsl:when test=\"$outputType=\'json-ld\'\">\n                <xsl:call-template name=\"json-ld-output\"/>\n            </xsl:when>\n            <xsl:otherwise>\n                <xsl:call-template name=\"json-ld-output\"/>\n            </xsl:otherwise>\n        </xsl:choose>\n    </xsl:template>\n    <xsl:template name=\"json-ld-output\">\n<script type=\"application/ld+json\"><xsl:text>[</xsl:text>\n<xsl:for-each select=\"//termEntry\">\n<xsl:for-each select=\"langSet\">\n<xsl:text>{\n\"@context\": \"http://schema.org/\",</xsl:text>\n<xsl:variable name=\"pos\"><xsl:number count=\"termEntry/langSet\" level=\"single\"/></xsl:variable>\n<xsl:variable name=\"id\"><xsl:value-of select=\"concat(parent::termEntry/@id,\'-\',$pos)\"/></xsl:variable>\n<xsl:text>&#xA;\"@id\": \"</xsl:text><xsl:value-of select=\"$id\"/>\",\n<xsl:if test=\"position() &gt; 1\">\n<xsl:variable name=\"id-first-langset\"><xsl:value-of select=\"concat(parent::termEntry/@id,\'-1\')\"/></xsl:variable>\n<xsl:text>\"sameAs\" : \"</xsl:text><xsl:value-of select=\"$id-first-langset\"/>\",\n</xsl:if>\n<xsl:text>\"@type\": \"CreativeWork\",</xsl:text>\n<xsl:text>&#xA;\"inLanguage\": \"</xsl:text><xsl:value-of select=\"@xml:lang\"/>\",\n    <xsl:text>\"name\": \"</xsl:text><xsl:for-each select=\".//term\"><xsl:value-of select=\"replace(.,\'&quot;\',\'\\\\&quot;\')\"/><xsl:if test=\"not(position()=last())\">,&#x20;</xsl:if></xsl:for-each><xsl:text>\"</xsl:text>\n<xsl:text>}</xsl:text><xsl:if test=\"not(position()=last())\">,&#xA;</xsl:if>\n</xsl:for-each>\n<xsl:if test=\"not(position()=last())\">,&#xA;</xsl:if>\n</xsl:for-each>\n<xsl:text>]</xsl:text></script>\n    </xsl:template>\n    <xsl:template name=\"rdf-xml-output\">\n        <rdf:RDF xmlns:schema=\"http://schema.org/\">\n        <xsl:for-each select=\"//termEntry\">\n            <xsl:for-each select=\"langSet\">\n            <xsl:variable name=\"pos\"><xsl:number count=\"termEntry/langSet\" level=\"single\"/></xsl:variable>\n            <xsl:variable name=\"id\"><xsl:value-of select=\"concat(parent::termEntry/@id,\'-\',$pos)\"/></xsl:variable>\n            <schema:CreativeWork rdf:about=\"{$id}\">\n                <xsl:if test=\"position() &gt; 1\">\n                    <xsl:variable name=\"id-first-langset\"><xsl:value-of select=\"concat(parent::termEntry/@id,\'-1\')\"/></xsl:variable>\n                    <schema:sameAs rdf:resource=\"{$id-first-langset}\"/>\n                </xsl:if>\n                <schema:name><xsl:for-each select=\".//term\"><xsl:value-of select=\".\"/><xsl:if test=\"not(position()=last())\">,&#x20;</xsl:if></xsl:for-each><xsl:text>\"</xsl:text></schema:name>\n                <schema:inLanguage><xsl:value-of select=\"@xml:lang\"/></schema:inLanguage>\n            </schema:CreativeWork>\n            </xsl:for-each>\n        </xsl:for-each>\n        </rdf:RDF>\n    </xsl:template>\n</xsl:stylesheet>','admin'),
  (0,'Conversion of e-terminology output to schema.org',1,'e-terminology-to-schema-dot-org','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n    xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"\n    exclude-result-prefixes=\"xs rdf ontolex tbx xsd nif sr\"\n    xmlns:sr=\"http://www.w3.org/2005/sparql-results#\"\n    xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n    xmlns:ontolex=\"http://www.w3.org/ns/lemon/ontolex#\"\n    xmlns:tbx=\"http://tbx2rdf.lider-project.eu/tbx#\"\n    xmlns:xsd=\"http://www.w3.org/2001/XMLSchema#\"\n    xmlns:nif=\"http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core#\" \n    version=\"2.0\">\n    <xsl:output method=\"html\" indent=\"yes\"/>\n    <xsl:template match=\"/\">\n        <script type=\"application/ld+json\"><xsl:text>[&#xA;</xsl:text>\n            <xsl:for-each select=\"/sr:sparql/sr:results/sr:result[sr:binding[@name=\'lexEntry\']]\">\n                    <xsl:text>{\n\"@context\": \"http://schema.org/\", &#xA;\"@id\" : \"</xsl:text> <xsl:value-of select=\"sr:binding[@name=\'lexEntry\']/sr:literal\"/><xsl:text>\",&#xA;\"type\" : \"CreativeWork\",&#xA;\"inLanguage\" : \"EN\",</xsl:text>\n                <xsl:text>&#xA;\"name\" : \"</xsl:text><xsl:value-of select=\"sr:binding[@name=\'new_writtenRep\']/sr:literal\"/><xsl:text>\"&#xA;}</xsl:text> \n                <xsl:if test=\"not(position()=last())\">,&#xA;</xsl:if>\n            </xsl:for-each>\n            <xsl:text>&#xA;,&#xA;</xsl:text>\n            <xsl:for-each select=\"/sr:sparql/sr:results/sr:result[sr:binding[@name=\'new_delexEntry\']]\">\n                <xsl:text>{\n\"@context\": \"http://schema.org/\", &#xA;\"@id\" : \"</xsl:text> <xsl:value-of select=\"concat(sr:binding[@name=\'lexEntry\']/sr:literal,\'-in-de\')\"/><xsl:text>\",&#xA;\"type\" : \"CreativeWork\",&#xA;\"inLanguage\" : \"DE\",</xsl:text>\n                <xsl:text>&#xA;\"name\" : \"</xsl:text><xsl:value-of select=\"sr:binding[@name=\'new_dewrittenRep\']/sr:literal\"/>\n                <xsl:text>\",&#xA;\"sameAs\" : \"</xsl:text><xsl:value-of select=\"sr:binding[@name=\'lexEntry\']/sr:literal\"/>\n                <xsl:text>\"&#xA;}</xsl:text> \n                <xsl:if test=\"not(position()=last())\">,&#xA;</xsl:if>\n            </xsl:for-each>\n            <xsl:text>&#xA;]</xsl:text>\n        </script>\n    </xsl:template>\n</xsl:stylesheet>','admin');
  
  
INSERT INTO `pipeline` (`id`, `creation_time`, `description`, `visibility`, `label`, `persist`, `serialized_requests`, `owner_name`) VALUES 
(9,1474670806358,NULL,1,'terms-to-schema-dot-org','','[ {\n  \"method\" : \"POST\",\n  \"endpoint\" : \"http://api-dev.freme-project.eu/current/e-terminology/tilde\",\n  \"parameters\" : {\n    \"source-lang\" : \"en\",\n    \"target-lang\" : \"de\",\n    \"filter\" : \"terms-basic-infos\"\n  },\n  \"headers\" : {\n    \"accept\" : \"text/xml\"\n  },\n  \"body\" : null\n}, {\n  \"method\" : \"POST\",\n  \"endpoint\" : \"http://api-dev.freme-project.eu/current/toolbox/xslt-converter/documents/e-terminology-to-schema-dot-org\",\n  \"parameters\" : { },\n  \"headers\" : {\n    \"content-type\" : \"text/xml\",\n    \"accept\" : \"text/xml\"\n  },\n  \"body\" : null\n} ]','admin');

