-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2026 at 03:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_manager_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','employee') NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `role`, `fullname`) VALUES
(1, 'admin', 'admin123', 'admin', 'Người Quản Lý'),
(2, 'employee', 'user123', 'employee', 'Nhân Viên A'),
(3, 'nghia123', '123456', 'employee', 'Cao Trọng Nghĩa');

-- --------------------------------------------------------

--
-- Table structure for table `employee_reports`
--

CREATE TABLE `employee_reports` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `reporter_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_reports`
--

INSERT INTO `employee_reports` (`id`, `employee_id`, `reporter_id`, `content`, `created_at`) VALUES
(4, 3, 1, '# BÁO CÁO ĐÁNH GIÁ NHÂN VIÊN\n\nChào bạn, với tư cách là một chuyên gia nhân sự (HR), tôi đã tổng hợp và phân tích các dữ liệu đánh giá từ quản lý trực tiếp dành cho nhân viên **Cao Trọng Nghĩa**. Dưới đây là bản báo cáo chi tiết:\n\n---\n\n# BÁO CÁO ĐÁNH GIÁ NHÂN SỰ\n**Họ và tên:** Cao Trọng Nghĩa  \n**Đối tượng đánh giá:** Hiệu suất công việc qua các dự án (Ngân hàng C, Công ty A)\n\n### 1. TỔNG QUAN HIỆU SUẤT\nDựa trên dữ liệu đánh giá, nhân viên Cao Trọng Nghĩa thể hiện năng lực chuyên môn không đồng đều giữa các mảng công việc. Anh Nghĩa có thế mạnh vượt trội trong các tác vụ liên quan đến tư duy hệ thống, cấu trúc dữ liệu và quản lý tiến độ (Backend/Data). Tuy nhiên, kỹ năng về thẩm mỹ giao diện (Frontend) và việc thấu hiểu bản chất nghiệp vụ chuyên sâu của dữ liệu vẫn còn là một hạn chế lớn, cần được đào tạo và cải thiện sớm.\n\n### 2. ƯU ĐIỂM CHI TIẾT\n*   **Kỹ năng xử lý và cấu trúc dữ liệu tốt:** Trong dự án tạo Datawarehouse cho Ngân hàng C, anh Nghĩa đã thực hiện rất tốt việc mapping (ánh xạ) dữ liệu giữa các bảng cũ và mới. Việc tuân thủ nghiêm túc các quy tắc đặt tên (naming convention) cho thấy sự cẩn thận và tính hệ thống trong cách làm việc.\n*   **Năng lực xây dựng Database vững vàng:** Với dự án Web bán hàng cho Công ty A, anh Nghĩa đã xây dựng cấu trúc cơ sở dữ liệu đầy đủ, hợp lý, đáp ứng tốt yêu cầu vận hành của hệ thống.\n*   **Quản lý thời gian hiệu quả:** Một điểm cộng lớn là anh Nghĩa luôn đảm bảo đúng tiến độ (deadline) đề ra, giúp dự án vận hành trôi chảy về mặt thời gian.\n*   **Điểm số kỹ thuật cao:** Các tác vụ mang tính kỹ thuật thuần túy thường đạt mức điểm ấn tượng (4/5 và 5/5).\n\n### 3. ĐIỂM CẦN CẢI THIỆN\n*   **Kỹ năng tư duy thẩm mỹ và UI/UX:** Đây là điểm yếu nhất hiện tại (điểm 2/5). Sản phẩm Frontend do anh Nghĩa thực hiện chưa đạt yêu cầu về thẩm mỹ và trải nghiệm người dùng (\"khá xấu\", \"không thuận mắt\"). Điều này ảnh hưởng trực tiếp đến sự hài lòng của khách hàng cuối.\n*   **Thấu hiểu bản chất dữ liệu:** Mặc dù kỹ thuật mapping tốt, nhưng quản lý nhận xét anh Nghĩa vẫn còn mô tả sai bản chất của dữ liệu. Điều này cho thấy anh đang làm việc dựa trên cấu trúc máy móc mà chưa thực sự đào sâu tìm hiểu ý nghĩa nghiệp vụ đằng sau những con số/trường dữ liệu đó.\n*   **Khả năng tự học và nghiên cứu:** Quản lý đã nhắc nhở trực tiếp về việc \"cần học thêm\" ở cả mảng nghiệp vụ dữ liệu và kỹ năng thiết kế giao diện.\n\n### 4. ĐÁNH GIÁ CHUNG\n**Xếp loại: KHÁ**\n\n**Nhận xét cuối cùng:**\nCao Trọng Nghĩa là một nhân viên có tiềm năng lớn ở vị trí **Data Engineer** hoặc **Backend Developer** nhờ sự chỉn chu trong cấu trúc và đảm bảo tiến độ. Tuy nhiên, nếu xét ở vai trò Full-stack hoặc các công việc đòi hỏi sự tinh tế về giao diện, anh Nghĩa hiện chưa đáp ứng được kỳ vọng.\n\n**Đề xuất hướng phát triển:**\n1.  **Về phía công ty:** Cân nhắc định hướng anh Nghĩa tập trung chuyên sâu vào các dự án về Dữ liệu/Hệ thống thay vì các dự án yêu cầu cao về Frontend.\n2.  **Về phía cá nhân:** Cần tham gia các khóa học ngắn hạn về UI/UX cơ bản để cải thiện tư duy thẩm mỹ. Đồng thời, trước khi bắt đầu một dự án dữ liệu, cần dành thời gian trao đổi với bộ phận nghiệp vụ (Business Analyst) để hiểu rõ \"bản chất dữ liệu\" thay vì chỉ tập trung vào kỹ thuật mapping.\n\n---\n*Người báo cáo: Chuyên gia Nhân sự*', '2026-04-30 04:47:05'),
(5, 2, 1, '# BÁO CÁO ĐÁNH GIÁ NHÂN VIÊN\n\nChào bạn, với tư cách là một chuyên gia Nhân sự, tôi đã tổng hợp và phân tích các dữ liệu đánh giá từ quản lý trực tiếp để lập bản báo cáo hiệu suất cho **Nhân viên A**.\n\nDưới đây là báo cáo chi tiết:\n\n---\n\n# BÁO CÁO ĐÁNH GIÁ HIỆU SUẤT NHÂN VIÊN\n**Đối tượng đánh giá:** Nhân viên A\n**Dự án trọng tâm:** Hệ thống Quản lý kho (Warehouse Management System - WMS)\n\n### 1. TỔNG QUAN HIỆU SUẤT\nNhân viên A là một thành viên có năng lực chuyên môn ổn định, thái độ làm việc chuyên nghiệp và luôn đảm bảo tiến độ công việc (deadline). Trong dự án WMS, nhân viên đã hoàn thành tốt vai trò thiết kế và xây dựng hệ thống lõi (Backend). Nhân viên thể hiện sự nhạy bén trong việc xử lý các lỗi phát sinh và duy trì mối quan hệ phối hợp tốt với các thành viên trong đội ngũ. Tuy nhiên, để tiến xa hơn ở các vai trò cao cấp, nhân viên cần tập trung cải thiện tư duy tối ưu hóa hiệu suất hệ thống và tính chủ động trong công việc.\n\n### 2. ƯU ĐIỂM CHI TIẾT\n*   **Kỹ năng xử lý vấn đề (Troubleshooting):** Có khả năng debug tốt ở mức độ Backend. Đặc biệt, nhân viên đã xử lý rất nhanh và đưa ra giải pháp fix hợp lý cho các lỗi nghiệp vụ phức tạp như lỗi \"tồn kho âm\".\n*   **Kỹ năng lập trình và Thiết kế hệ thống:** Hoàn thành tốt các module quan trọng như API quản lý sản phẩm, nhập/xuất kho và phân quyền. Các sản phẩm đầu ra hoạt động ổn định và đáp ứng đầy đủ yêu cầu nghiệp vụ cơ bản.\n*   **Kỹ năng giao tiếp và Phối hợp (Teamwork):** Phối hợp rất nhịp nhàng với đội ngũ Frontend để thống nhất API. Nhân viên có tư duy minh bạch, luôn giao tiếp rõ ràng mỗi khi có sự thay đổi về logic hệ thống, giúp giảm thiểu sai sót trong quá trình tích hợp.\n*   **Quản lý tiến độ:** Đảm bảo hoàn thành các đầu việc đúng thời gian cam kết, đóng góp tích cực vào tiến độ chung của dự án.\n\n### 3. ĐIỂM CẦN CẢI THIỆN\n*   **Tư duy tối ưu hóa hiệu suất (Performance Tuning):** Đây là điểm hạn chế rõ rệt nhất. Nhân viên còn lúng túng khi xử lý các bài toán dữ liệu lớn (Big Data), đặc biệt là các truy vấn thống kê theo thời gian. Hiện tại vẫn đang cần sự hỗ trợ sát sao từ Senior để tối ưu hóa hệ thống.\n*   **Tính chủ động trong công việc:** Nhân viên hiện tại đang làm việc theo tư duy \"thực thi yêu cầu\" (task-oriented). Cần chuyển dịch sang tư duy \"đóng góp giải pháp\" bằng cách chủ động đề xuất các cải tiến kỹ thuật hoặc quy trình để nâng cao chất lượng hệ thống thay vì chỉ đợi yêu cầu từ cấp trên.\n*   **Phản ứng với các vấn đề kỹ thuật chuyên sâu:** Cần rèn luyện thêm khả năng dự báo các điểm nghẽn (bottleneck) của hệ thống ngay từ khâu thiết kế database để tránh các vấn đề về performance về sau.\n\n### 4. ĐÁNH GIÁ CHUNG\nNhân viên A là một nhân sự nòng cốt, nắm vững kiến thức nền tảng và có tinh thần trách nhiệm cao. Những thiếu sót hiện tại chủ yếu nằm ở kinh nghiệm xử lý các bài toán kỹ thuật chuyên sâu và mức độ chủ động trong đóng góp ý tưởng. Với sự định hướng và đào tạo thêm về kỹ năng tối ưu hóa, nhân viên A hoàn toàn có khả năng trở thành một kỹ sư Backend chủ chốt.\n\n**Xếp loại: KHÁ**\n\n---\n**Đề xuất từ bộ phận Nhân sự:**\n1.  **Đào tạo:** Cử nhân viên tham gia các buổi tech-talk hoặc khóa học về tối ưu hóa Query SQL và xử lý High Traffic/Large Data.\n2.  **Kế hoạch phát triển:** Quản lý trực tiếp có thể giao thêm các nhiệm vụ mang tính \"mở\" (ví dụ: Nghiên cứu giải pháp giảm thời gian phản hồi API thống kê) để khuyến khích tính chủ động đề xuất cải tiến của nhân viên.', '2026-04-30 05:00:35'),
(6, 2, 1, '# BÁO CÁO ĐÁNH GIÁ NHÂN VIÊN\n\nChào bạn, với tư cách là một chuyên gia Nhân sự, tôi đã tổng hợp và phân tích các dữ liệu từ hệ thống để lập bản báo cáo đánh giá hiệu suất cho **Nhân Viên A**. Dưới đây là nội dung chi tiết:\n\n---\n\n# BÁO CÁO ĐÁNH GIÁ HIỆU SUẤT NHÂN VIÊN\n**Đối tượng đánh giá:** Nhân Viên A\n**Kỳ đánh giá:** [Bổ sung giai đoạn đánh giá tại đây]\n**Người đánh giá:** Quản lý trực tiếp\n\n### 1. TỔNG QUAN HIỆU SUẤT\nTrong kỳ đánh giá này, Nhân Viên A cho thấy năng lực chuyên môn rất vững vàng với các đầu việc hoàn thành đạt chất lượng tối đa theo thang điểm của hệ thống (5/5). Tuy nhiên, hiệu suất làm việc tổng thể đang gặp vấn đề về mặt quản lý tiến độ (timeline). Dù kết quả đầu ra cuối cùng đạt yêu cầu cao về mặt kỹ thuật/nội dung, nhưng việc không đảm bảo thời hạn (deadline) là yếu tố cần được xem xét nghiêm túc để tránh ảnh hưởng đến dây chuyền vận hành chung của đội ngũ.\n\n### 2. ƯU ĐIỂM CHI TIẾT\n*   **Chất lượng công việc xuất sắc:** Nhân Viên A đạt điểm tuyệt đối (5/5) ở cả hai dự án được ghi nhận (\"svdgrerdggdf\" và \"km\"). Điều này chứng tỏ nhân viên có kỹ năng chuyên môn tốt, sự tỉ mỉ và khả năng đáp ứng chính xác các yêu cầu nghiệp vụ đề ra.\n*   **Khả năng hoàn thành mục tiêu:** Dù có sự cố về thời gian, nhân viên vẫn đảm bảo được kết quả cuối cùng đạt mức chất lượng cao nhất theo đánh giá của quản lý, cho thấy tinh thần trách nhiệm với chất lượng sản phẩm/dịch vụ.\n\n### 3. ĐIỂM CẦN CẢI THIỆN\n*   **Quản lý thời gian và Tiến độ (Deadline):** Tại dự án \"svdgrerdggdf\", dù kết quả tốt nhưng việc bị trễ deadline là một điểm trừ đáng kể. Trong môi trường làm việc chuyên nghiệp, việc chậm trễ tiến độ có thể gây ra hiệu ứng dây chuyền, ảnh hưởng đến kế hoạch của các bộ phận liên quan và uy tín của dự án.\n*   **Kỹ năng lập kế hoạch:** Nhân viên cần chủ động hơn trong việc ước lượng khối lượng công việc và báo cáo sớm nếu có nguy cơ chậm trễ, thay vì để xảy ra tình trạng trễ hạn.\n\n### 4. ĐÁNH GIÁ CHUNG\nDựa trên sự cân bằng giữa chất lượng đầu ra rất cao và vấn đề về quản lý thời gian, tôi đưa ra nhận xét tổng quát như sau:\n\n**Xếp loại: KHÁ**\n\n**Nhận xét cuối cùng:**\nNhân Viên A là một nhân sự có năng lực chuyên môn tiềm năng và đáng tin cậy về mặt chất lượng sản phẩm. Nếu khắc phục được vấn đề quản lý thời gian và kỷ luật về tiến độ, nhân viên hoàn toàn có thể đạt mức xếp loại \"Tốt\" hoặc \"Xuất sắc\" trong các kỳ đánh giá tới. \n\n**Kiến nghị từ HR:**\n1.  Quản lý trực tiếp cần có buổi trao đổi (1-on-1) để tìm hiểu nguyên nhân gốc rễ của việc trễ deadline (do quá tải công việc, do kỹ năng quản lý thời gian hay do yếu tố khách quan).\n2.  Nhân viên cần áp dụng các công cụ quản lý công việc để theo dõi tiến độ sát sao hơn.\n3.  Khuyến khích nhân viên duy trì phong độ về chất lượng công việc đồng thời cam kết chặt chẽ về mặt thời gian.\n\n---\n*Người lập báo cáo: Chuyên gia Nhân sự*', '2026-04-30 16:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `is_read`, `created_at`) VALUES
(37, 2, 'Công việc hoàn tất', 'Công việc \"adsd\" của bạn đã được quản lý phê duyệt.', 1, '2026-04-30 01:16:15'),
(38, 2, 'Bạn có đánh giá mới', 'Quản lý đã đánh giá công việc của bạn: 5/5 sao.', 1, '2026-04-30 01:16:15'),
(39, 2, 'Công việc mới', 'Bạn đã được giao công việc \"1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)\" trong dự án \"HỆ THỐNG QUẢN LÝ KHO (Warehouse Management System)\"', 1, '2026-04-30 02:51:55'),
(40, 3, 'Công việc mới', 'Bạn đã được giao công việc \"2. Frontend\" trong dự án \"HỆ THỐNG QUẢN LÝ KHO (Warehouse Management System)\"', 1, '2026-04-30 02:51:55'),
(41, 2, 'Công việc mới', 'Bạn đã được giao công việc \"3. Testing & Fix bug\" trong dự án \"HỆ THỐNG QUẢN LÝ KHO (Warehouse Management System)\"', 1, '2026-04-30 02:51:55'),
(42, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)\".', 1, '2026-04-30 02:52:16'),
(43, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"3. Testing & Fix bug\".', 1, '2026-04-30 02:52:20'),
(44, 2, 'Công việc hoàn tất', 'Công việc \"1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)\" của bạn đã được quản lý phê duyệt.', 1, '2026-04-30 02:53:11'),
(45, 2, 'Bạn có đánh giá mới', 'Quản lý đã đánh giá công việc của bạn: 3/5 sao.', 1, '2026-04-30 02:53:11'),
(46, 2, 'Công việc hoàn tất', 'Công việc \"3. Testing & Fix bug\" của bạn đã được quản lý phê duyệt.', 1, '2026-04-30 02:54:08'),
(47, 2, 'Bạn có đánh giá mới', 'Quản lý đã đánh giá công việc của bạn: 4/5 sao.', 1, '2026-04-30 02:54:08'),
(48, 3, 'Công việc mới', 'Bạn đã được giao công việc \"xậy dựng database\" trong dự án \"xây dựng web bán hàng cho cty A\"', 1, '2026-04-30 02:56:30'),
(49, 3, 'Công việc mới', 'Bạn đã được giao công việc \"tạo frontend\" trong dự án \"xây dựng web bán hàng cho cty A\"', 1, '2026-04-30 02:56:30'),
(50, 3, 'Công việc mới', 'Bạn đã được giao công việc \"map dữ liệu\" trong dự án \"tạo datawarehouse cho ngân hàng c\"', 1, '2026-04-30 02:57:25'),
(51, 3, 'Công việc mới', 'Bạn đã được giao công việc \"mô tả chi tiết các trường dữ liệu\" trong dự án \"tạo datawarehouse cho ngân hàng c\"', 1, '2026-04-30 02:57:25'),
(52, 1, 'Công việc chờ duyệt', 'Nhân viên Cao Trọng Nghĩa đã đăng ký hoàn thành công việc \"xậy dựng database\".', 1, '2026-04-30 02:58:02'),
(53, 1, 'Công việc chờ duyệt', 'Nhân viên Cao Trọng Nghĩa đã đăng ký hoàn thành công việc \"tạo frontend\".', 1, '2026-04-30 02:58:07'),
(54, 1, 'Công việc chờ duyệt', 'Nhân viên Cao Trọng Nghĩa đã đăng ký hoàn thành công việc \"map dữ liệu\".', 1, '2026-04-30 02:58:13'),
(55, 1, 'Công việc chờ duyệt', 'Nhân viên Cao Trọng Nghĩa đã đăng ký hoàn thành công việc \"mô tả chi tiết các trường dữ liệu\".', 1, '2026-04-30 02:58:20'),
(56, 3, 'Công việc hoàn tất', 'Công việc \"xậy dựng database\" của bạn đã được quản lý phê duyệt.', 1, '2026-04-30 02:59:21'),
(57, 3, 'Bạn có đánh giá mới', 'Quản lý đã đánh giá công việc của bạn: 4/5 sao.', 1, '2026-04-30 02:59:21'),
(58, 3, 'Công việc hoàn tất', 'Công việc \"tạo frontend\" của bạn đã được quản lý phê duyệt.', 1, '2026-04-30 03:00:13'),
(59, 3, 'Bạn có đánh giá mới', 'Quản lý đã đánh giá công việc của bạn: 2/5 sao.', 1, '2026-04-30 03:00:13'),
(60, 3, 'Công việc hoàn tất', 'Công việc \"map dữ liệu\" của bạn đã được quản lý phê duyệt.', 1, '2026-04-30 03:01:06'),
(61, 3, 'Bạn có đánh giá mới', 'Quản lý đã đánh giá công việc của bạn: 5/5 sao.', 1, '2026-04-30 03:01:06'),
(62, 3, 'Công việc hoàn tất', 'Công việc \"mô tả chi tiết các trường dữ liệu\" của bạn đã được quản lý phê duyệt.', 1, '2026-04-30 03:01:27'),
(63, 3, 'Bạn có đánh giá mới', 'Quản lý đã đánh giá công việc của bạn: 5/5 sao.', 1, '2026-04-30 03:01:27'),
(64, 1, 'Công việc chờ duyệt', 'Nhân viên Cao Trọng Nghĩa đã đăng ký hoàn thành công việc \"2. Frontend\".', 1, '2026-04-30 04:49:41'),
(65, 2, 'Công việc mới', 'Bạn đã được giao công việc \"fd\" trong dự án \"km\"', 1, '2026-04-30 05:10:27'),
(66, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"fd\".', 1, '2026-04-30 05:10:43'),
(67, 2, 'Công việc hoàn tất', 'Công việc \"fd\" của bạn đã được quản lý phê duyệt.', 1, '2026-04-30 05:11:02'),
(68, 1, 'Dự án đã hoàn thành', 'Tất cả công việc trong dự án \"km\" đã hoàn thành. Trạng thái dự án được cập nhật thành Hoàn thành.', 1, '2026-04-30 05:11:02'),
(69, 2, 'Bạn có đánh giá mới', 'Quản lý đã đánh giá công việc của bạn: 5/5 sao.', 1, '2026-04-30 05:11:02'),
(70, 2, 'Công việc mới', 'Bạn đã được giao công việc \"sè\" trong dự án \"svdgrerdggdf\"', 1, '2026-04-30 05:11:58'),
(71, 2, 'Công việc mới', 'Bạn đã được giao công việc \"1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)\" trong dự án \"HỆ THỐNG QUẢN LÝ KHO (Warehouse Management System)\"', 1, '2026-04-30 08:14:33'),
(72, 2, 'Công việc mới', 'Bạn đã được giao công việc \"2. Frontend Trang dashboard tổng quan Trang quản lý sản phẩm Trang nhập / xuất hàng Trang báo cáo tồn kho UI login / phân quyền\" trong dự án \"HỆ THỐNG QUẢN LÝ KHO (Warehouse Management System)\"', 1, '2026-04-30 08:14:33'),
(73, 3, 'Công việc mới', 'Bạn đã được giao công việc \"3. Testing & Fix bug Test API bằng Postman Fix lỗi logic tồn kho âm Kiểm thử phân quyền\" trong dự án \"HỆ THỐNG QUẢN LÝ KHO (Warehouse Management System)\"', 0, '2026-04-30 08:14:33'),
(74, 2, 'Công việc mới', 'Bạn đã được giao công việc \"1. Backend API quản lý nhân viên (thêm/sửa/xóa) API chấm công (check-in/check-out) API tính lương cơ bản API đánh giá nhân viên\" trong dự án \"ỨNG DỤNG QUẢN LÝ NHÂN SỰ (HR Management System)\"', 1, '2026-04-30 08:15:28'),
(75, 3, 'Công việc mới', 'Bạn đã được giao công việc \"2. Frontend Trang danh sách nhân viên Trang chấm công Trang đánh giá nhân viên Trang báo cáo HR\" trong dự án \"ỨNG DỤNG QUẢN LÝ NHÂN SỰ (HR Management System)\"', 0, '2026-04-30 08:15:28'),
(76, 2, 'Công việc mới', 'Bạn đã được giao công việc \"3. AI Report (module nâng cao) Tổng hợp đánh giá quản lý Tạo báo cáo tự động bằng AI Xuất file PDF\" trong dự án \"ỨNG DỤNG QUẢN LÝ NHÂN SỰ (HR Management System)\"', 1, '2026-04-30 08:15:28'),
(77, 3, 'Công việc mới', 'Bạn đã được giao công việc \"4. Testing Test logic chấm công Test AI generate report Kiểm tra dữ liệu sai lệch\" trong dự án \"ỨNG DỤNG QUẢN LÝ NHÂN SỰ (HR Management System)\"', 0, '2026-04-30 08:15:28'),
(78, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"sè\".', 1, '2026-04-30 08:15:47'),
(79, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)\".', 1, '2026-04-30 08:15:51'),
(80, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"2. Frontend Trang dashboard tổng quan Trang quản lý sản phẩm Trang nhập / xuất hàng Trang báo cáo tồn kho UI login / phân quyền\".', 1, '2026-04-30 08:15:54'),
(81, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"1. Backend API quản lý nhân viên (thêm/sửa/xóa) API chấm công (check-in/check-out) API tính lương cơ bản API đánh giá nhân viên\".', 1, '2026-04-30 08:15:58'),
(82, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"3. AI Report (module nâng cao) Tổng hợp đánh giá quản lý Tạo báo cáo tự động bằng AI Xuất file PDF\".', 1, '2026-04-30 08:16:00'),
(83, 3, 'Công việc mới', 'Bạn đã được giao công việc \"d\" trong dự án \"dss\"', 0, '2026-04-30 15:57:53'),
(84, 1, 'Công việc chờ duyệt', 'Nhân viên Cao Trọng Nghĩa đã đăng ký hoàn thành công việc \"3. Testing & Fix bug Test API bằng Postman Fix lỗi logic tồn kho âm Kiểm thử phân quyền\".', 0, '2026-04-30 16:01:06'),
(85, 3, 'Công việc mới', 'Bạn đã được giao công việc \"rhth\" trong dự án \"frr\"', 0, '2026-04-30 16:04:39'),
(86, 2, 'Công việc mới', 'Bạn đã được giao công việc \"ngdhdt\" trong dự án \"frr\"', 1, '2026-04-30 16:04:39'),
(87, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"sè\".', 0, '2026-04-30 16:05:15'),
(88, 2, 'Công việc hoàn tất', 'Công việc \"sè\" của bạn đã được quản lý phê duyệt.', 1, '2026-04-30 16:06:34'),
(89, 1, 'Dự án đã hoàn thành', 'Tất cả công việc trong dự án \"svdgrerdggdf\" đã hoàn thành. Trạng thái dự án được cập nhật thành Hoàn thành.', 0, '2026-04-30 16:06:34'),
(90, 2, 'Bạn có đánh giá mới', 'Quản lý đã đánh giá công việc của bạn: 5/5 sao.', 1, '2026-04-30 16:06:34'),
(91, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)\".', 0, '2026-04-30 16:31:18'),
(92, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)\".', 0, '2026-04-30 16:31:24'),
(93, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)\".', 0, '2026-04-30 16:31:37'),
(94, 1, 'Công việc chờ duyệt', 'Nhân viên Nhân Viên A đã đăng ký hoàn thành công việc \"1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)\".', 0, '2026-04-30 16:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `priority` varchar(20) DEFAULT 'medium'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `manager_id`, `status`, `created_at`, `priority`) VALUES
(16, 'km', 'j', 1, 'completed', '2026-04-30 05:10:27', 'medium'),
(17, 'svdgrerdggdf', 'dfgf', 1, 'completed', '2026-04-30 05:11:58', 'medium'),
(18, 'HỆ THỐNG QUẢN LÝ KHO (Warehouse Management System)', 'Xây dựng hệ thống quản lý nhập – xuất – tồn kho cho doanh nghiệp vừa và nhỏ.', 1, 'active', '2026-04-30 08:14:33', 'medium'),
(19, 'ỨNG DỤNG QUẢN LÝ NHÂN SỰ (HR Management System)', 'Quản lý nhân viên, chấm công, đánh giá hiệu suất và tạo báo cáo cho quản lý.', 1, 'active', '2026-04-30 08:15:28', 'medium'),
(21, 'frr', 'dfđfdfd', 1, 'active', '2026-04-30 16:04:38', 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `due_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `title`, `description`, `assigned_to`, `status`, `due_date`) VALUES
(23, 16, 'fd', '', 2, 'completed', NULL),
(24, 17, 'sè', '', 2, 'completed', NULL),
(25, 18, '1. Backend Thiết kế database (Products, Orders, Inventory, Users) API quản lý sản phẩm (CRUD) API nhập kho / xuất kho API thống kê tồn kho Xử lý phân quyền (admin, nhân viên kho)', '', 2, 'review', NULL),
(26, 18, '2. Frontend Trang dashboard tổng quan Trang quản lý sản phẩm Trang nhập / xuất hàng Trang báo cáo tồn kho UI login / phân quyền', '', 2, 'review', NULL),
(27, 18, '3. Testing & Fix bug Test API bằng Postman Fix lỗi logic tồn kho âm Kiểm thử phân quyền', '', 3, 'review', NULL),
(28, 19, '1. Backend API quản lý nhân viên (thêm/sửa/xóa) API chấm công (check-in/check-out) API tính lương cơ bản API đánh giá nhân viên', '', 2, 'review', NULL),
(29, 19, '2. Frontend Trang danh sách nhân viên Trang chấm công Trang đánh giá nhân viên Trang báo cáo HR', '', 3, 'todo', NULL),
(30, 19, '3. AI Report (module nâng cao) Tổng hợp đánh giá quản lý Tạo báo cáo tự động bằng AI Xuất file PDF', '', 2, 'review', NULL),
(31, 19, '4. Testing Test logic chấm công Test AI generate report Kiểm tra dữ liệu sai lệch', '', 3, 'todo', NULL),
(33, 21, 'rhth', '', 3, 'todo', NULL),
(34, 21, 'ngdhdt', '', 2, 'todo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_evaluations`
--

CREATE TABLE `task_evaluations` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_evaluations`
--

INSERT INTO `task_evaluations` (`id`, `task_id`, `employee_id`, `rating`, `comment`, `created_at`) VALUES
(4, 16, 2, 3, 'Nhân viên A hoàn thành phần backend của hệ thống quản lý kho đúng tiến độ được giao. Các API chính như quản lý sản phẩm, nhập kho, xuất kho và thống kê tồn kho đều hoạt động ổn định, đáp ứng được yêu cầu cơ bản của hệ thống.\n\nTuy nhiên, trong quá trình review code và kiểm thử, hệ thống vẫn còn tồn tại một số vấn đề về hiệu năng khi xử lý lượng dữ liệu lớn, đặc biệt là ở các truy vấn liên quan đến thống kê tồn kho theo thời gian.', '2026-04-30 02:53:11'),
(5, 18, 2, 4, 'Khi phát sinh lỗi tồn kho âm, nhân viên A xử lý nhanh và đưa ra fix hợp lý.\nCó khả năng debug tốt ở mức backend.\nTuy nhiên phản ứng với vấn đề performance còn chậm, cần hỗ trợ từ senior để tối ưu.\nPhối hợp tốt với frontend để thống nhất API.\nGiao tiếp rõ ràng khi có thay đổi logic.\nNhưng đôi lúc chưa chủ động đề xuất cải tiến hệ thống, chủ yếu làm theo yêu cầu được giao.', '2026-04-30 02:54:08'),
(6, 19, 3, 4, 'làm khá tốt, đúng dateline,đầy đủ các bảng cũng như các trường cần thiết để sử dụng', '2026-04-30 02:59:21'),
(7, 20, 3, 2, 'frontend tạo khá xấu , không thuận mắt nhìn cần học thêm để tạo được đẹp hơn cho khách', '2026-04-30 03:00:13'),
(8, 21, 3, 5, 'map dữ liệu tốt, đúng các bẳng cũ mới bảng mới. đặt tên theo yêu cầu đã đầy đủ', '2026-04-30 03:01:06'),
(9, 22, 3, 5, 'mô tả sai với bản chất của dữ liệu. cần học thêm', '2026-04-30 03:01:27'),
(10, 23, 2, 5, '', '2026-04-30 05:11:02'),
(11, 24, 2, 5, 'làm tốt công việc nhưng bị trễ dl', '2026-04-30 16:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `avatar_url` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `account_id`, `email`, `phone`, `address`, `bio`, `avatar_url`, `updated_at`) VALUES
(1, 2, ' nhbjgyu', NULL, NULL, NULL, NULL, '2026-04-30 00:49:23'),
(2, 1, 'Admin@gmail.com', '01234567', 'Hà Nội', 'là quản lý', NULL, '2026-04-30 08:19:09'),
(3, 3, NULL, NULL, NULL, NULL, NULL, '2026-04-30 04:47:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `employee_reports`
--
ALTER TABLE `employee_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `reporter_id` (`reporter_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `assigned_to` (`assigned_to`);

--
-- Indexes for table `task_evaluations`
--
ALTER TABLE `task_evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_reports`
--
ALTER TABLE `employee_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `task_evaluations`
--
ALTER TABLE `task_evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_reports`
--
ALTER TABLE `employee_reports`
  ADD CONSTRAINT `employee_reports_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_reports_ibfk_2` FOREIGN KEY (`reporter_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`assigned_to`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
