-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2025 at 01:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness_king`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `ID` int(11) NOT NULL,
  `exercise_name` varchar(50) NOT NULL,
  `instructions` varchar(1000) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `furtherInformation` varchar(1000) NOT NULL,
  `video_link` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `time` int(100) NOT NULL,
  `calories` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`ID`, `exercise_name`, `instructions`, `summary`, `furtherInformation`, `video_link`, `type`, `time`, `calories`) VALUES
(1, 'Dips', 'Step up on the dip station (if possible) and position your hands with a neutral grip.\r\nInitiate the dip by unlocking the elbows and slowly lowering the body until the forearms are almost parallel with the floor.\r\nControl the descent to parallel and then drive back to the starting position by pushing through the palms.\r\nRepeat for the desired number of repetitions.\r\n', 'The chest dip is a great exercise to use to target the muscles of the chest. It will also indirectly work the muscles of the triceps and shoulders as well. Chest dips effectively hit the lower region of the pec, similarly to the decline bench press. However, it follows a vertical pressing movement pattern, which provides a unique stimulus for the muscles of the chest. It is best to master the bodyweight variation of this exercise prior to adding weight via weighted vests, belts, or chains. The dip can be performed as part of your chest workouts, push workouts, upper body workouts, or full body workouts.\r\n', 'Technically there are two ways to perform dips - neither is wrong, just different movement with different purposes:\r\nStaying upright and keeping the elbows in close to increase tricep recruitment.\r\nLeaning forward with elbows wider to increase chest recruitment.', 'dip.mp4', 'arms', 15, 50),
(2, 'Lateral Raises', 'The dumbbell lateral raise is a good exercise for building width in your upper body which gives you the \"V\" shape. Grab a set of dumbbells and stand straight up with the dumbbells at your sides. Your palms should be facing your body. You should be holding the dumbbells slightly off your body, as this keeps the tension on the side delts. This is your starting position for the exercise. To execute, slowly raise the dumbbells up to around shoulder height. It\'s important that you do not let your wrists go above your elbows while raising the weight, as this will take the work off the side delts and put it on the front delts. Pause at the top of the movement, and then slowly lower the weight back to the starting position.\r\nDo not let the dumbbells touch your body, and then raise them for the next rep.', 'The dumbbell lateral raise is one of those exercises that so many people do incorrectly. First, this is an isolation exercise, so you should be focusing on stretch and muscle contraction, not using heavy weights. Second, you MUST keep your rep timing slow and controlled. So many people use momentum to swing heavy weights up, and this is not going to get you the best results from the dumbbell lateral raise. Third, it very important that your elbows stay above your wrists. If your wrists come up too far, the focus comes off your side delts and onto your front delts. A good trick to ensure this does not happen is to tilt the dumbbells down as if you were pouring a jug of water as you raise them up. This makes it very hard to raise the wrists higher than the elbows.\r\nAnd finally, keep the side delts under stress for the whole set by not allowing the dumbbells to touch your body or \"hang\" at the bottom of the movement.', '', 'placeholderImage.png', 'shoulders', 15, 50),
(3, 'Chest Fly', 'Set both pulleys directly at (or slightly above) shoulder height and select the desired weight. Grasp both handles with a neutral grip and take a step forward to split the stance. Press the handles to lockout while flexing the pecs and extending the elbows. Keep a slight bend in the elbows, move entirely at the shoulder joint, and slowly allow the arms to open while the pecs stretch. Return to the starting position by flexing your pecs and bringing the handles together at chest height. Slowly lower back to the starting position and repeat for the desired number of repetitions.', 'The standing cable fly is a variation of the chest fly and an exercise used to strengthen the pushing muscles of the body including the chest, triceps, and shoulders. The standing cable fly can be tough to overload as it requires a great deal of core stability, so it is probably best used as an accessory movement for those looking to increase their chest muscle mass. This movement can be included into your chest workouts, push workouts, upper body workouts, or full body workouts.', 'Imagine you’re trying to hug a tree while completing the exercise. Don’t squeeze the handles excessively tight as this can over recruit the forearms and biceps thereby reducing activation of the pecs. Avoid touching or banging the handles together at peak contraction to keep constant tension on the intended muscle groups. Always keep a slight bend in the elbows and never lower the weight to the point where you get any sort of pain and pressure at the front of the shoulder joint. Ensure you maintain some tension in your abs and don’t allow your lower back to arch excessively.', 'chestFly.mp4', 'chest', 15, 50),
(4, 'Bench Press', 'Lie flat on a bench and set your hands just outside of shoulder width.\r\nSet your shoulder blades by pinching them together and driving them into the bench.\r\nTake a deep breath and allow your spotter to help you with the lift off in order to maintain tightness through your upper back.\r\nLet the weight settle and ensure your upper back remains tight after lift off.\r\nInhale and allow the bar to descend slowly by unlocking the elbows.\r\nLower the bar in a straight line to the base of the sternum (breastbone) and touch the chest.\r\nPush the bar back up in a straight line by pressing yourself into the bench, driving your feet into the floor for leg drive, and extending the elbows.\r\nRepeat for the desired number of repetitions.', 'The barbell bench press is a classic exercise popular among all weight lifting circles. From bodybuilders to powerlifters, the bench press is a staple chest exercise in nearly every workout program. By performing the bench press, you primarily work your pectoralis major (your chest). Other muscles which assist in moving the barbell during a bench press are other muscles of the chest, triceps, and shoulders. Not everyone is built to perform the traditional barbell bench press, so several variations have been created to ensure people can train this crucial movement pattern in a safe and comfortable way.', 'Some variations of the bench press include: \r\nIncline bench press,\r\nDecline bench press,\r\nDumbbell bench press,\r\nDumbbell incline bench press,\r\nDumbbell decline bench press,\r\nSmith machine bench press,', 'benchPress.mp4', 'chest', 15, 50),
(6, 'Dumbell Curls', 'Select the desired weight from the rack, and sit in an upright position on a flat bench. Hinge forward and position your elbow near the base of your knee. Place your free hand on the other knee to stabilize yourself. Using a supinated (palms facing up) grip, take a deep breath and curl the dumbbell towards your shoulder. Once the bicep is fully shortened, slowly lower the weight back to the starting position. Repeat for the desired number of repetitions on both sides.', 'The concentration curl is a bodybuilding favorite for building biceps. Some promote the concentration curl claiming it to be an exercise guaranteed to produce a bicep pump and build the mind muscle connection. With that said, the slow tempo typically used during the concentration curl is great for building the biceps and since it is an unilateral exercise, it helps work each bicep equally.', 'Maintain a slight bend in the elbow at the bottom of the movement in order to keep tension through the biceps. Using a slow eccentric (lowering portion) of the exercise can help to improve tension and mind muscle connection.', 'curls.mp4', 'arms', 15, 50),
(7, 'Barbell Curls', 'Select the desired weight, load it onto the bar, and assume a narrower than shoulder width grip. Using a supinated (palms up) grip, take a deep breath and curl the barbell towards your shoulders. Once the biceps are fully shortened, slowly lower the weight back to the starting position. Repeat for the desired number of repetitions.', 'The close grip barbell curl is a variation of the barbell curl and an exercise used to target the muscles of the biceps. This variation will help hit the outer portion of the biceps. Just like any muscle group, when aesthetics are the goal, using several different angles and hand grips can lead to optimal muscle growth. Barbell curls can be performed during your bicep workouts, upper body workouts, or full body workouts.', 'Don’t allow the elbows to shift behind the body. Similarly, make sure the shoulder doesn’t shift forward in the socket as you lower the weight. Maintain a slight bend in the elbow at the bottom of the movement to keep tension through the biceps. Using a slow eccentric (lowering portion) of the exercise can help to improve tension and mind muscle connection. If you experience forearm or wrist discomfort while using a barbell, switch to an EZ curl bar or dumbbells.', 'barbellCurl.mp4', 'arms', 10, 50),
(11, 'Pull-ups', 'Using a supinated grip, grasp the bar with a narrow grip. Take a deep breath, squeeze your glutes and brace your abs. Depress the shoulder blades and then drive the elbows straight down to the floor while activating the lats. Pull your chin towards the bar until the lats are fully contracted, then slowly lower yourself back to the start position and repeat for the assigned number of repetitions.', 'The close grip chin up is a variation of the chin up and an exercise used to target the muscles of the back. In particular, the close grip chin up works the lats, but also indirectly hits the muscles of the upper back, biceps, and core. The close grip chin up will encourage slightly more involvement from the biceps than other chin up variations. Thus, the close grip chin up is best used as an exercise to overload the biceps when attempting to maximize bicep muscle growth.', 'To decrease bicep involvement, use a false (thumbless grip). Try to keep a neutral head position (looking straight ahead or slightly up) as hyperextending the neck can lead to compensations throughout the spine. If the bar is high enough, keep the legs straight and in front of the body. Avoid falling into overextension of the lumbar spine by squeezing your glutes and bracing your abs.', 'pull-up.mp4', 'back', 10, 50),
(13, 'Reverse Pec Deck Fly', 'Face the fly machine while seated with your chest against the pad and the handles positioned in front of your torso. Reach forward and grasp each handle with a pronated or neutral grip. Contract the rear delts while keeping the elbows bent and open the arms in a reverse fly motion. Slowly lower the handles back to the starting position and repeat for the desired number of repetitions.', 'The machine reverse fly is the machine variation of the bent over dumbbell reverse fly and an exercise used to target the rear delt muscles of the shoulder. Performing the machine reverse fly exercise can be a useful way to isolate the rear delt muscles without the need to stabilize the core as seen in other variations. The rear delts are often a lagging and underactive muscle group, so training them within your workout program is a must.', 'Ensure the movement comes entirely from the upper arm moving in the shoulder socket rather than scapular retraction. The shoulder blades shouldn’t move drastically - there may be some end range retraction but nothing drastic. Don’t allow the head to jut forward as the arms open.', 'reverse-fly.mp4', 'back', 10, 50),
(15, 'Shoulder Press', 'Assume a seated position in the machine with the handles set at roughly shoulder height. Grab the handles with a pronated or neutral grip. Inhale and press directly overhead. Slowly lower the handles back to the starting position. Repeat for the desired number of repetitions.', 'The machine shoulder press is a variation of the seated barbell shoulder press used to strengthen the muscles of the shoulders. One would use the machine shoulder press as a way to perform the pressing movement pattern with a focus on isolating the shoulders. One can better isolate certain muscle groups with a machine due to its fixed movement pattern. The machine shoulder press is best added towards the end of your shoulder workout if you are training for hypertrophy, after you’ve used other more compound variations to work your push muscles.', 'Don’t allow the head to jut forward excessively. Drive the bicep to the ear and exhale as you press. If you sense any pressure in your neck or traps during the movement, look to address a lack of thoracic spine extension or shoulder flexion. Keeping the elbows slightly bent at the top and not locking out entirely will help to keep tension on the shoulders. If you can’t lock out the elbows overhead than it may indicate a lack of shoulder mobility due to poor scapular upward rotation.', 'shoulder-press.mp4', 'shoulders', 10, 50),
(17, 'Crunches', 'Lay supine in a relaxed position with your knees bent. Hold a weight plate directly over your chest and press it to extension. Raise your knees to 90 degrees, at which point they will be perpendicular to the floor. Exhale as you reach towards your toes with the weight plate. Once your abs are fully contracted and your upper back is off the floor, slowly lower yourself back to the starting position. Complete for the assigned number of repetitions.', 'The weighted crunch is a variation of the crunch and an exercise used to build the abdominal muscles. Adding weight is a common form of progression used to make bodyweight exercises, such as the crunch, more challenging. Doing so allows for the lifter to progress, adapt, and build more muscle.', 'Exhale hard like you’re blowing out candles on a cake and hold the contraction for a second to improve mind muscle connection. If your lower back bothers you during this exercise, choose more anti extension and anti rotation based movements. Avoid putting the hands behind the head as this can lead to excess strain upon the neck.', 'crunches.mp4', 'core', 10, 50),
(19, 'Leg raises', 'Lay supine in a relaxed position with your legs straight and your hands underneath your low back for support. Keep your legs straight and raise them towards your forehead while contracting your abdominals and exhaling. Once your abs are fully contracted and your legs are slightly above parallel, slowly lower your legs back to the starting position. Complete for the assigned number of repetitions.', 'The lying floor leg raise is a variation of the abdominal crunch and an exercise used to isolate the muscles of the abdomen. The lying floor leg raise is a flexion based exercise which keeps the lower abdominal muscles under constant tension during the entire range of motion.', 'Exhale hard like you’re blowing out candles on a cake and hold the contraction for a second in order to improve mind muscle connection. If your lower back bothers you during this exercise, choose more anti extension and anti rotation based movements. Avoid putting the hands behind the head as this can lead to excess strain upon the neck.', 'legRaise.mp4', 'core', 10, 50),
(21, 'Squats', 'Select a kettlebell and hold the horns of the handle with each hand. Take a deep breath and descend by simultaneously pushing the hips back and bending the knees. Once your thighs reach parallel with the floor, begin to reverse the movement. Keep your abs braced and drive your feet through the floor. Drive back to the starting position and repeat for the desired number of repetitions.', 'The kettlebell goblet squat is a goblet squat variation and an exercise used to strengthen the muscles of the legs. The kettlebell goblet squat is both a great rehab and strength building movement. Performing the kettlebell goblet squat allows one to achieve a greater amount of squat depth than they would normally be able to when performing other squat variations. Also, by having the weight in front of the body, the kettlebell goblet squat can help those who experience excessive forward leaning remain upright during the squat movement pattern.', 'If you struggle with squatting with a barbell then this is the best version for learning how to squat in a vertical fashion. Toe angle is highly individual - experiment to see what feels best for you. Experiment with a “false” (i.e. thumbless) grip as this helps to eliminate elbow and wrist issues in some folks. Drive through the whole foot - you want 3 points of contact: big toe, little toe, and heel.', 'squat.mp4', 'legs', 10, 50),
(22, 'Leg curls', 'Select the desired weight, then adjust the pad so it rests comfortably above the back of the heels. Tense up the hamstrings by taking the weight slightly off the stack. This is the starting position for the exercise. Take a deep breath, squeeze the hamstrings, and curl the weight up as far as possible while keeping the spine neutral. Slowly lower the weight back to the starting position and repeat for the desired number of repetitions.', 'The seated leg curl is a variation of the leg curl and an exercise used to isolate the hamstrings. The seated leg curl is best used as part of your leg workout or in a full body workout routine.', 'To keep tension on the hamstrings, keep the knees just shy of lockout. Don’t allow the back to arch, keep your hips pressed into the pad. Keep your low back flat against the pad throughout the movement. Ensure the head does not jut forward excessively. Don’t allow momentum to dictate the tempo of the exercise, control the movement throughout the entire range of motion.', 'legCurl.mp4', 'legs', 10, 50),
(23, 'Lunges', 'Set up with your feet shoulder width apart and the bar positioned across your traps. Step forward with one leg and allow both knees to bend simultaneously. Descend until the back knee touches the floor. Drive through the front foot and extend the knee as you stand up fully and return to the starting position. Repeat on the opposite leg. Repeat the desired number of repetitions.', 'The barbell walking lunge was a favorite among a lot of the old school bodybuilders who trained during the golden era of bodybuilding. The barbell walking lunge is a complete leg builder which combines cardio conditioning to weightlifting to deliver a serious leg pump. They are an advanced variation of the lunge movement and a progression to the barbell lunge. The barbell walking lunge can be performed for a set number of repetitions or a set distance depending on your training style and individual goals.', 'Do not progress to the elevated version until you have fully mastered the bodyweight version of this movement. Adding range of motion without having the requisite motor control is a recipe for disaster. Learn to walk before you try to run. Walking lunges are a more advanced progression and should only be utilized once one has the requisite hip and core stability', 'lunges.mp4', 'legs', 10, 50),
(24, 'Dips', 'Step up on the dip station (if possible) and position your hands with a neutral grip.\r\nInitiate the dip by unlocking the elbows and slowly lowering the body until the forearms are almost parallel with the floor.\r\nControl the descent to parallel and then drive back to the starting position by pushing through the palms.\r\nRepeat for the desired number of repetitions.\r\n', 'The chest dip is a great exercise to use to target the muscles of the chest. It will also indirectly work the muscles of the triceps and shoulders as well. Chest dips effectively hit the lower region of the pec, similarly to the decline bench press. However, it follows a vertical pressing movement pattern, which provides a unique stimulus for the muscles of the chest. It is best to master the bodyweight variation of this exercise prior to adding weight via weighted vests, belts, or chains. The dip can be performed as part of your chest workouts, push workouts, upper body workouts, or full body workouts.\r\n', 'Technically there are two ways to perform dips - neither is wrong, just different movement with different purposes:\r\nStaying upright and keeping the elbows in close to increase tricep recruitment.\r\nLeaning forward with elbows wider to increase chest recruitment.', 'dip.mp4', 'chest', 15, 50);

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `calories` int(100) NOT NULL,
  `time` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` double(3,0) NOT NULL,
  `weightkg` double(4,1) NOT NULL,
  `heightcm` double(4,1) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `password`, `age`, `weightkg`, `heightcm`, `gender`) VALUES
(1, 'testuser', 'test123@test.com', 'test2', 20, 80.0, 175.0, 'male'),
(2, 'TESTUSER', 'TEST@TEST.COM', 'TEST', 20, 80.0, 175.0, 'male'),
(3, '123', '123@123.com', '123', 20, 80.0, 175.0, 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
