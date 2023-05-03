-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 01:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Uncategorized', 'If no category is available, &#039;Uncategorized&#039; will be selected by default.'),
(2, 'Android', 'Set this category to the post, if your blog is related to &#039;Android&#039;.'),
(3, 'Windows', 'Set this category to the post, if your blog is related to &#039;Windows&#039;.'),
(4, 'iOS', 'Set this category to the post, if your blog is related to &#039;iOS&#039;.'),
(5, 'macOS', 'Set this category to the post, if your blog is related to &#039;macOS&#039;.'),
(6, 'Linux', 'Set this category to the post, if your blog is related to &#039;Linux&#039;.'),
(7, 'ChromeOS', 'Set this category to the post, if your blog is related to &#039;ChromeOS&#039;.');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(1, 'Android and Its History', 'Android is a mobile operating system based on a modified version of the Linux kernel and other open-source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. Android is developed by a consortium of developers known as the Open Handset Alliance, though its most widely used version is primarily developed by Google. It was unveiled in November 2007, with the first commercial Android device, the HTC Dream, being launched in September 2008.\r\n\r\nAt its core, the operating system is known as Android Open Source Project (AOSP)[4] and is free and open-source software (FOSS) primarily licensed under the Apache License. However most devices run on the proprietary Android version developed by Google, which ship with additional proprietary closed-source software pre-installed,[5] most notably Google Mobile Services (GMS)[6] which includes core apps such as Google Chrome, the digital distribution platform Google Play, and the associated Google Play Services development platform. Firebase Cloud Messaging is used for push notifications. While AOSP is free, the &quot;Android&quot; name and logo are trademarks of Google, which imposes standards to restrict the use of Android branding by &quot;uncertified&quot; devices outside their ecosystem.[7][8]\r\n\r\nOver 70 percent of smartphones based on Android Open Source Project run Google&#039;s ecosystem (which is known simply as Android), some with vendor-customized user interfaces and software suites, such as TouchWiz and later One UI by Samsung and HTC Sense.[9] Competing ecosystems and forks of AOSP include Fire OS (developed by Amazon), ColorOS by OPPO, OriginOS by Vivo, MagicUI by Honor, or custom ROMs such as LineageOS.\r\n\r\nThe source code has been used to develop variants of Android on a range of other electronics, such as game consoles, digital cameras, portable media players, and PCs, each with a specialized user interface. Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google. Software packages on Android, which use the APK format, are generally distributed through proprietary application stores like Google Play Store, Amazon Appstore (including for Windows 11), Samsung Galaxy Store, Huawei AppGallery, Cafe Bazaar, GetJar and Aptoide, or open source platforms like F-Droid.\r\n\r\nAndroid has been the best-selling OS worldwide on smartphones since 2011 and on tablets since 2013. As of May 2021, it had over three billion monthly active users, the largest installed base of any operating system,[10] and as of January 2021, the Google Play Store featured over 3 million apps.[11] Android 13, released on August 15, 2022, is the latest version,[12] and the recently released Android 12.1/12L includes improvements specific to foldable phones, tablets, desktop-sized screens[13] and Chromebooks.', '1683114598android.png', '2023-05-01 15:51:12', 2, 1, 0),
(2, 'Windows and Its History', 'Microsoft Windows is a group of several proprietary graphical operating system families developed and marketed by Microsoft. Each family caters to a certain sector of the computing industry. For example, Windows NT for consumers, Windows Server for servers, and Windows IoT for embedded systems. Defunct Windows families include Windows 9x, Windows Mobile, and Windows Phone.\r\n\r\nThe first version of Windows was released on November 20, 1985, as a graphical operating system shell for MS-DOS in response to the growing interest in graphical user interfaces (GUIs).[8]\r\n\r\nWindows is the most popular desktop operating system in the world, with 75% market share as of April 2022, according to StatCounter.[9] However, Windows is not the most used operating system when including both mobile and desktop OSes, due to Android&#039;s massive growth.[10]\r\n\r\nAs of September 2022, the most recent version of Windows is Windows 11 for consumer PCs and tablets, Windows 11 Enterprise for corporations, and Windows Server 2022 for servers.', '1683114767windows.png', '2023-05-01 15:53:46', 3, 2, 1),
(3, 'macOS and Its History', 'macOS, (previously OS X and originally Mac OS X) is a Unix operating system[8] developed and marketed by Apple Inc. since 2001. It is the primary operating system for Apple&#039;s Mac computers. Within the market of desktop and laptop computers, it is the second most widely used desktop OS, after Microsoft Windows and ahead of ChromeOS.\r\n\r\nmacOS succeeded the classic Mac OS, a Mac operating system with nine releases from 1984 to 1999. During this time, Apple cofounder Steve Jobs had left Apple and started another company, NeXT, developing the NeXTSTEP platform that would later be acquired by Apple to form the basis of macOS.\r\n\r\nThe first desktop version, Mac OS X 10.0, was released in March 2001, with its first update, 10.1, arriving later that year. All releases from Mac OS X 10.5 Leopard[9] and after are UNIX 03 certified,[10] with an exception for OS X 10.7 Lion.[11] Apple&#039;s other operating systems (iOS, iPadOS, watchOS, tvOS, audioOS) are derivatives of macOS.\r\n\r\nA prominent part of macOS&#039;s original brand identity was the use of Roman numeral X, pronounced &quot;ten&quot; as in Mac OS X and also the iPhone X, as well as code naming each release after species of big cats, or places within California.[12] Apple shortened the name to &quot;OS X&quot; in 2011 and then changed it to &quot;macOS&quot; in 2016 to align with the branding of Apple&#039;s other operating systems, iOS, watchOS, and tvOS. After sixteen distinct versions of macOS 10, macOS Big Sur was presented as version 11 in 2020, macOS Monterey was presented as version 12 in 2021, and macOS Ventura was presented as version 13 in 2022.\r\n\r\nmacOS has supported three major processor architectures, beginning with PowerPC-based Macs in 1999. In 2006, Apple transitioned to the Intel architecture with a line of Macs using Intel Core processors. In 2020, Apple began the Apple silicon transition, using self-designed, 64-bit ARM-based Apple M series processors on the latest Macintosh computers.', '1683114758macos.png', '2023-05-01 15:55:39', 5, 2, 0),
(4, 'iOS and Its History', 'iOS (formerly iPhone OS[10]) is a mobile operating system developed by Apple Inc. exclusively for its hardware. It is the operating system that powers many of the company&#039;s mobile devices, including the iPhone; the term also includes the system software for iPads predating iPadOS&mdash;which was introduced in 2019&mdash;as well as on the iPod Touch devices&mdash;which were discontinued in mid-2022.[11] It is the world&#039;s second-most widely installed mobile operating system, after Android. It is the basis for three other operating systems made by Apple: iPadOS, tvOS, and watchOS.[12] It is proprietary software, although some parts of it are open source under the Apple Public Source License and other licenses.[13]\r\n\r\nUnveiled in 2007 for the first-generation iPhone, iOS has since been extended to support other Apple devices such as the iPod Touch (September 2007) and the iPad (introduced: January 2010; availability: April 2010). As of March 2018, Apple&#039;s App Store contains more than 2.1 million iOS applications, 1 million of which are native for iPads.[14] These mobile apps have collectively been downloaded more than 130 billion times.\r\n\r\nMajor versions of iOS are released annually. The current stable version, iOS 16, was released to the public on September 12, 2022.[15]', '1683114687ios.png', '2023-05-01 15:56:56', 4, 3, 0),
(5, 'ChromeOS and Its History', 'ChromeOS,[8] sometimes styled as chromeOS and formerly styled as Chrome OS, is a Linux-based operating system developed and designed by Google. It is derived from the open-source ChromiumOS and uses the Google Chrome web browser as its principal user interface.\r\n\r\nGoogle announced the project in July 2009, initially describing it as an operating system where applications and user data would reside in the cloud. ChromeOS was used primarily to run web applications.[9]\r\n\r\nAll ChromiumOS and ChromeOS versions support progressive web applications (such as Google Docs or Microsoft Office 365), as well as web browser extensions (which can resemble native applications). ChromeOS (but not ChromiumOS) from 2016 onwards can also run Android applications from Google Play.[10] Since 2018, ChromiumOS/ChromeOS version 69 onwards also support Linux applications, which are executed in a lightweight virtual machine[11] with a Debian Linux environment.[12][13]\r\n\r\nThe operating system is now usually evaluated in conjunction with the hardware that runs it.', '1683114677chromeos.png', '2023-05-01 15:59:15', 7, 3, 0),
(6, 'Linux and Its History', 'Linux  is a family of open-source Unix-like operating systems based on the Linux kernel,[12] an operating system kernel first released on September 17, 1991, by Linus Torvalds.[13][14][15] Linux is typically packaged as a Linux distribution, which includes the kernel and supporting system software and libraries, many of which are provided by the GNU Project. Many Linux distributions use the word &quot;Linux&quot; in their name, but the Free Software Foundation uses the name &quot;GNU/Linux&quot; to emphasize the importance of GNU software, causing some controversy.[16][17]\r\n\r\nPopular Linux distributions[18][19][20] include Debian, Fedora Linux, and Ubuntu, the latter of which itself consists of many different distributions and modifications, including Lubuntu and Xubuntu. Commercial distributions include Red Hat Enterprise Linux and SUSE Linux Enterprise. Desktop Linux distributions include a windowing system such as X11 or Wayland, and a desktop environment such as GNOME or KDE Plasma. Distributions intended for servers may omit graphics altogether, or include a solution stack such as LAMP. Because Linux is freely redistributable, anyone may create a distribution for any purpose.[21]\r\n\r\nLinux was originally developed for personal computers based on the Intel x86 architecture, but has since been ported to more platforms than any other operating system.[22] Because of the dominance of the Linux-based Android on smartphones, Linux, including Android, has the largest installed base of all general-purpose operating systems, as of May 2022.[23][24][25] Although Linux is, as of November 2022, used by only around 2.6 percent of desktop computers,[26] the Chromebook, which runs the Linux kernel-based ChromeOS, dominates the US K&ndash;12 education market and represents nearly 20 percent of sub-$300 notebook sales in the US.[27] Linux is the leading operating system on servers (over 96.4% of the top 1 million web servers&#039; operating systems are Linux),[28] leads other big iron systems such as mainframe computers, and is used on all of the world&#039;s 500 fastest supercomputers[d] (since November 2017, having gradually displaced all competitors).[29][30][31]\r\n\r\nLinux also runs on embedded systems, i.e. devices whose operating system is typically built into the firmware and is highly tailored to the system. This includes routers, automation controls, smart home devices, video game consoles,[32] televisions (Samsung and LG Smart TVs),[33][34][35] automobiles (Tesla, Audi, Mercedes-Benz, Hyundai and Toyota),[36] and spacecraft (Falcon 9 rocket, Dragon crew capsule and the Perseverance rover).[37][38]\r\n\r\nLinux is one of the most prominent examples of free and open-source software collaboration. The source code may be used, modified and distributed commercially or non-commercially by anyone under the terms of its respective licenses, such as the GNU General Public License (GPL). The Linux kernel, for example, is licensed under the GPLv2, with an exception for system calls that allows code that calls the kernel via system calls not to be licensed under the GPL.[39][40][21]', '1683114719linux.png', '2023-05-01 16:01:32', 6, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(1, 'Nishat', 'Mahmud', 'nishat', 'nishatrhythm@gmail.com', '$2y$10$0kCdNWuAXKfXa9Yv7qeiQ.FNcb6rRZVBcmpLFlUlXoT6zL8Nwh2c6', '1682952705nishat.png', 1),
(2, 'Rizwan', 'Hasan', 'rizwan', 'rizwanhasan226@gmail.com', '$2y$10$LPiQOSwANkxHkPKfh1vSC.MU6Jg070cyvS1D6OMeS57gQidtbUPRW', '1682952801rizwan.png', 0),
(3, 'Safwan', 'Hasan', 'safwan', 'safwanhasan220@gmail.com', '$2y$10$pjodbkbvU285kYywsXV29OOI.Jl6EQj9zYlLvvNRPqi0fsBKELOIO', '1682953034safwan.png', 0),
(4, 'Md. Waliul', 'Islam Rayhan', 'rayhan', 'waliulislamrayhan@gmail.com', '$2y$10$7Tcsw6YA4twnmkWKkYZueu1VTo/Tl1jUuS7CGNjSSg5FzWWcHyuYK', '1682953145rayhan.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
