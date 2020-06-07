-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2020 at 12:15 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingblasters`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `sno` int(50) DEFAULT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL,
  UNIQUE KEY `sno` (`sno`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'kg', '1234567890', 'hey there', '2020-05-15 22:25:54', 'asna@gmail.com'),
(NULL, 'Kevin Nilesh Gandhi', '9324426227', 'hey there', '2020-05-17 18:55:59', 'kng2907@gmail.com'),
(NULL, 'Kevin Nilesh Gandhi', '9324426227', 'hey there', '2020-05-17 19:08:31', 'kng2907@gmail.com'),
(NULL, 'Kevin Nilesh Gandhi', '9324426227', 'hey there', '2020-05-17 19:09:29', 'kng2907@gmail.com'),
(NULL, 'Kevin Nilesh Gandhi', '9324426227', 'hey there', '2020-05-17 19:12:32', 'kevin.gandhi@sakec.ac.in'),
(NULL, 'Kevin Nilesh Gandhi', '9324426227', 'hey there', '2020-05-17 19:14:25', 'kng2907@gmail.com'),
(NULL, 'Kevin Nilesh Gandhi', '9324426227', 'hey there', '2020-05-17 19:20:00', 'kng2907@gmail.com'),
(NULL, 'Kevin Nilesh Gandhi', '9324426227', 'hey there', '2020-05-17 19:20:34', 'kng2907@gmail.com'),
(NULL, 'Kevin Nilesh Gandhi', '9324426227', 'hey there', '2020-05-17 19:21:00', 'kng2907@gmail.com'),
(NULL, 'kevin', '9324426227', 'hey this is my first blog', '2020-05-17 19:33:27', 'kevinngandhi@gmail.com'),
(NULL, 'kevin', '9324426227', 'hey this is my first blog', '2020-05-17 19:35:44', 'kevinngandhi@gmail.com'),
(NULL, 'kevin', '', '', '2020-05-17 19:45:35', ''),
(NULL, 'kevin', '9324426227', 'hey there', '2020-05-17 19:46:01', 'dfasjhdf@gmail.com'),
(NULL, 'Nilesh', '9322227346', 'hey my name is nilesh and I am a sub broker', '2020-05-21 22:55:01', 'gnilesh04@gmail.com'),
(NULL, 'kevin', '1234545678', 'hello world', '2020-06-07 03:18:16', 'abcd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `sno` int(50) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets Learn About Stock Market', 'Invest For Tomorrow', 'first-post', 'A stock market, equity market or share market is the aggregation of buyers and sellers of stocks (also called shares), which represent ownership claims on businesses; these may include securities listed on a public stock exchange, as well as stock that is only traded privately, such as shares of private companies which are sold to investors through equity crowdfunding platforms. Investment in the stock market is most often done via stockbrokerages and electronic trading platforms. Investment is usually made with an investment strategy in mind.\r\n\r\nStocks can be categorized by the country where the company is domiciled. For example, Nestlé and Novartis are domiciled in Switzerland and traded on the SIX Swiss Exchange, so they may be considered as part of the Swiss stock market, although the stocks may also be traded on exchanges in other countries, for example, as American depository receipts (ADRs) on U.S. stock markets.', 'home-bg.jpg', '2020-05-21 18:56:34'),
(2, 'Python ', 'programming language', 'python-programming', 'Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.[28]\r\n\r\nPython is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly, procedural), object-oriented, and functional programming. Python is often described as a \"batteries included\" language due to its comprehensive standard library.[29]\r\n\r\nPython was conceived in the late 1980s as a successor to the ABC language. Python 2.0, released in 2000, introduced features like list comprehensions and a garbage collection system capable of collecting reference cycles. Python 3.0, released in 2008, was a major revision of the language that is not completely backward-compatible, and much Python 2 code does not run unmodified on Python 3.\r\n\r\nThe Python 2 language was officially discontinued in 2020 (first planned for 2015), and \"Python 2.7.18 is the last Python 2.7 release and therefore the last Python 2 release.\"[30] No more security patches or other improvements will be released for it.[31][32] With Python 2\'s end-of-life, only Python 3.5.x[33] and later are supported.\r\n\r\nPython interpreters are available for many operating systems. A global community of programmers develops and maintains CPython, an open source[34] reference implementation. A non-profit organization, the Python Software Foundation, manages and directs resources for Python and CPython development.', '', '2020-05-21 12:23:28'),
(3, 'Java (programming language)', '“Java is to JavaScript what car is to Carpet.”', 'java-programming', 'Java is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible. It is intended to let application developers write once, run anywhere (WORA),[17] meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.[18] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but it has fewer low-level facilities than either of them. As of 2019, Java was one of the most popular programming languages in use according to GitHub,[19][20] particularly for client-server web applications, with a reported 9 million developers.[21]\r\n\r\nJava was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle) and released in 1995 as a core component of Sun Microsystems\' Java platform. The original and reference implementation Java compilers, virtual machines, and class libraries were originally released by Sun under proprietary licenses. As of May 2007, in compliance with the specifications of the Java Community Process, Sun had relicensed most of its Java technologies under the GNU General Public License. Meanwhile, others have developed alternative implementations of these Sun technologies, such as the GNU Compiler for Java (bytecode compiler), GNU Classpath (standard libraries), and IcedTea-Web (browser plugin for applets).\r\n\r\nThe latest versions are Java 14, released in March 2020, and Java 11, a currently supported long-term support (LTS) version, released on September 25, 2018; Oracle released for the legacy Java 8 LTS the last free public update in January 2019 for commercial use, while it will otherwise still support Java 8 with public updates for personal use up to at least December 2020. Oracle (and others) highly recommend uninstalling older versions of Java because of serious risks due to unresolved security issues.[22] Since Java 9, 10, 12 and 13 are no longer supported, Oracle advises its users to immediately transition to the latest version (currently Java 14) or an LTS release.', '', '2020-05-21 12:25:40'),
(7, 'dgfs', 'dsfds', 'fdsfds', 'fddsfdsfsdfs', '', '2020-05-22 13:11:31'),
(5, 'HTML', 'Hypertext Markup Language ', 'html-programming', 'standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\r\n\r\nWeb browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for the appearance of the document.\r\n\r\nHTML elements are the building blocks of HTML pages. With HTML constructs, images and other objects such as interactive forms may be embedded into the rendered page. HTML provides a means to create structured documents by denoting structural semantics for text such as headings, paragraphs, lists, links, quotes and other items. HTML elements are delineated by tags, written using angle brackets. Tags such as <img /> and <input /> directly introduce content into the page. Other tags such as <p> surround and provide information about document text and may include other tags as sub-elements. Browsers do not display the HTML tags, but use them to interpret the content of the page.', '', '2020-05-21 23:12:31'),
(6, 'Cascading Style Sheets', 'Maintained by the World Wide Web Consortium', 'css-programming', 'Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language like HTML.[1] CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.[2]\r\n\r\nCSS is designed to enable the separation of presentation and content, including layout, colors, and fonts.[3] This separation can improve content accessibility, provide more flexibility and control in the specification of presentation characteristics, enable multiple web pages to share formatting by specifying the relevant CSS in a separate .css file, and reduce complexity and repetition in the structural content.\r\n\r\nSeparation of formatting and content also makes it feasible to present the same markup page in different styles for different rendering methods, such as on-screen, in print, by voice (via speech-based browser or screen reader), and on Braille-based tactile devices. CSS also has rules for alternate formatting if the content is accessed on a mobile device.[4]\r\n\r\nThe name cascading comes from the specified priority scheme to determine which style rule applies if more than one rule matches a particular element. This cascading priority scheme is predictable.', '', '2020-05-21 23:14:23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
