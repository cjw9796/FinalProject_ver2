INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_phone`, `user_gender`, `user_date`, `user_mbti`, `user_img`, `user_regdate`)
VALUES
    ('test', '테스트계정', '1234', '01012345678', 'M', '1998-08-21', 'ENTJ', 'default1.png', '2023-08-21 12:34:56'),
    ('john_doe@example.com', 'JohnDoe', 'password123', '01012345678', 'M', '1998-08-21', 'ENTJ', 'default1.png', '2023-08-21 12:34:56'),
    ('jane_smith@example.com', 'JaneSmith', 'pass4321', '01098765432', 'F', '2000-08-21', 'INFP', 'default2.png', '2023-08-22 09:15:30'),
    ('test2', 'jung', '1234', '555-555-5555', 'M', '2023-08-21', 'INTJ','default1.png', NOW()),
    ('alex_brown@example.com', 'AlexBrown', 'securepwd', '01055555555', 'M', '1960-08-21', 'INTJ', 'default1.png', '2023-08-23 18:27:45'),
    ('sample@example.com', '샘플', '1234', '01055555555', 'M', '1970-08-21', 'INTJ', 'default1.png', '2023-08-25 20:45:00'),
    ('user1@example.com', 'UserOne', 'userpass1', '01011111111', 'F', '1967-08-21', 'ISFJ', 'default2.png', '2023-08-26 07:30:20'),
    ('user2@example.com', 'UserTwo', 'userpass2', '01022222222', 'M', '1978-08-21', 'ESTP', 'default1.png', '2023-08-26 16:15:55'),
    ('user3@example.com', 'UserThree', 'userpass3', '01033333333', 'F', '1956-08-21', 'ENFP', 'default2.png', '2023-08-26 22:10:45'),
    ('user4@example.com', 'UserFour', 'userpass4', '01044444444', 'M', '1999-08-21', 'ISTJ', 'default1.png', '2023-08-29 11:05:30'),
    ('user5@example.com', 'UserFive', 'userpass5', '01055555555', 'F', '2023-08-21', 'ESFP', 'default2.png', '2023-08-30 19:20:15'),
    ('user6@example.com', 'UserSix', 'userpass6', '01066666666', 'M', '2023-08-21', 'INTJ', 'default1.png', '2023-08-31 12:00:00'),
    ('user7@example.com', 'UserSeven', 'userpass7', '01077777777', 'F', '2023-08-21', 'ESFP', 'default2.png', NOW()),
    ('user8@example.com', 'UserEight', 'userpass8', '01088888888', 'M', '2023-08-21', 'INTJ', 'default1.png', NOW()),
    ('user9@example.com', 'UserNine', 'userpass9', '01099999999', 'F', '2023-08-21', 'ISFP', 'default2.png', NOW());


INSERT INTO `user` ( `user_number`, `user_id`, `user_name`, `user_password`, `user_phone`, `user_gender`, `user_date`, `user_mbti`, `user_img`, `user_regdate`)
VALUES
    (0,'admin', 'admin', 'admin', '01000000000', 'M', '1900-01-01', 'ENTJ', 'manager.png', '2023-08-21 12:34:56');

update finalproject.user
set user_number = 0 where user_id = 'admin';


INSERT INTO `manager` (`manager_id`, `manager_password`)
VALUES ('admin', 'admin');

INSERT INTO `area_tourism` (`area_name`, `place_id`, `place_name`)
VALUES
    ('seoul', 126508, '경복궁'),
    ('seoul', 127220, '북한산'),
    ('seoul', 132183, '광장시장'),
    ('seoul', 781031, '홍대거리'),
    ('seoul', 126535, 'N서울타워'),
    ('seoul', 126537, '북촌한옥마을'),
    ('seoul', 129507, '청계천'),
    ('seoul', 129703, '국립중앙박물관'),
    ('jeju', 1911160, '헬로키티아일랜드'),
    ('jeju', 2048059, '아쿠아플라넷'),
    ('jeju', 228854, '용머리해안'),
    ('jeju', 126437, '정방폭포'),
    ('jeju', 1918639, '월정리해변'),
    ('jeju', 2660802, '오설록티뮤지엄'),
    ('jeju', 741109, '카멜리아힐'),
    ('jeju', 1146121, '에코랜드테마파크'),
    ('busan', 1997221, '감천문화마을'),
    ('busan', 126848, '해동용궁사'),
    ('busan', 1277679, '부산타워'),
    ('busan', 132190, '자갈치시장'),
    ('busan', 2504464, '송도해상케이블카'),
    ('busan', 127488, 'BIFF광장'),
    ('busan', 126148, '범어사'),
    ('busan', 2684712, '흰여울문화마을'),
    ('yeosu', 128017, '영취산'),
    ('yeosu', 2638438, '예술랜드'),
    ('yeosu', 2994563, '라마다해상짚트랙'),
    ('yeosu', 2736360, '아르떼뮤지엄'),
    ('yeosu', 2778049, '하멜전시관'),
    ('yeosu', 2612869, '이순신광장'),
    ('yeosu', 2037230, '아쿠아플라넷'),
    ('yeosu', 2514658, '고소동벽화마을'),
    ('gangneung', 128758, '경포해수욕장'),
    ('gangneung', 2687981, '경포아쿠아리움'),
    ('gangneung', 125789, '오죽헌'),
    ('gangneung', 2714439, '안반데기'),
    ('gangneung', 125417, '대관령자연휴양림'),
    ('gangneung', 132771, '강릉중앙시장'),
    ('gangneung', 2903111, '스카이베이호텔'),
    ('gangneung', 130123, '에디슨과학박물관'),
    ('gyeongju', 127855, '양동마을'),
    ('gyeongju', 128526, '동궁과 월지'),
    ('gyeongju', 126166, '불국사'),
    ('gyeongju', 127484, '경주국립공원'),
    ('gyeongju', 126218, '문무대왕릉'),
    ('gyeongju', 1492402, '대릉원'),
    ('gyeongju', 126207, '첨성대'),
    ('gyeongju', 126216, '석굴암');



INSERT INTO `qna` (`qna_writer`,  `qna_title`, `qna_content`, `qna_answer`, `qna_date`)
VALUES
    ('john_doe','제목1', '내용은 이것입니다1.', '답변은 아직입니다1.', now()),
    ('seokjin','제목2', '내용은 이것입니다2.',  '답변은 아직입니다2.', now()),
    ('john_doe','제목3', '내용은 이것입니다3.',  '답변은 아직입니다3.', now()),
    ('seokjin','제목4', '내용은 이것입니다4.', '답변은 아직입니다4.', now()),
    ('john_doe','제목5', '내용은 이것입니다5.', '답변은 아직입니다5.', now()),
    ('test','제목6', '내용은 이것입니다6.',  '저도 몰라요', now()),
    ('test','제목7', '내용은 이것입니다7.', '저도 몰라요', now());

INSERT INTO accompany (user_number, ac_regdate, ac_title, ac_text, ac_people, ac_region, ac_startdate, ac_enddate,
                       ac_status, ac_picture, ac_viewcount, ac_travelstyle, ac_personalhash)
VALUES (1, '2023-09-03', '가을 나들이 동행자 찾아요', '가을에 함께 나들이를 가실 분을 찾습니다. 어느 지역이든 좋아요.', 2, '서울', '2023-10-15', '2023-10-30',
        '', 'acc1.png', 0, '', ''),
       (2, '2023-09-04', '경주 여행 가고 싶어요', '경주로 여행을 계획 중이에요. 함께 가실 분 찾아요.', 1, '경주', '2023-11-05', '2023-11-15', '', 'acc2.jpg',
        0, '', ''),
       (3, '2023-09-06', '소박한 마을 여행 동행자 구합니다', '한국의 소박한 마을을 여행하려고 합니다. 함께 가실 분 찾아요.', 2, '전라북도', '2023-10-10',
        '2023-10-25', '', 'acc3.jpeg', '0', '', ''),
       (1, '2023-09-07', '가을 바다 여행 동행 찾아요', '가을에 바다 여행을 함께 하실 분을 찾습니다. 동해, 부산 등 어디든 좋아요.', 3, '강원도', '2023-11-01',
        '2023-11-20', '', 'acc4.jpg', '0', '', ''),
       (5, '2023-09-08', '역사 여행 친구 찾아요', '한국의 역사적인 장소를 여행하려고 합니다. 함께 가실 분 찾아요.', 2, '경상도', '2023-10-25', '2023-11-05',
        '', 'acc5.jpeg', '0', '', ''),
       (1, '2023-09-09', '산림욕 여행 동행 구합니다', '한국의 아름다운 산림욕을 함께 즐길 동행을 찾습니다.', 1, '강원도', '2023-11-10', '2023-11-25', '',
        'acc6.jpg', '0', '', ''),
       (5, '2023-09-10', '한국 전통 마을 여행 동행자 찾아요', '한국의 전통 마을을 여행하려고 합니다. 함께 가실 분 찾아요.', 1, '경기도', '2023-10-15',
        '2023-10-30', '', 'acc7.jpg', '0', '', ''),
       (4, '2023-09-11', '제주 자연 속 모험 여행 동행', '한국 자연 속 모험 여행을 함께 할 동행을 찾아요.', 2, '제주도', '2023-11-05', '2023-11-15', '',
        'acc8.jpg', '0', '', ''),
       (3, '2023-09-12', '제주도 오션뷰 여행 친구 찾아요', '한국의 아름다운 오션뷰를 감상하려고 합니다. 함께 갈 분 찾아요.', 1, '제주도', '2023-10-10',
        '2023-10-25', '', 'acc9.jpg', '0', '', ''),
       (2, '2023-09-13', '충청도 고즈넉한 여행 파트너', '한국의 고즈넉한 여행지를 방문하려고 합니다. 함께 가실 분 찾아요.', 2, '충청도', '2023-10-20',
        '2023-11-10', '', 'acc10.jpg', '0', '', ''),
       (1, '2023-09-14', '산책 동행', '충청도의 아름다운 산책 함께 할 동행을 찾습니다.', 1, '충청도', '2023-11-01', '2023-11-20', '', 'acc11.jpg', '0', '',
        ''),
       (2, '2023-09-15', '가을 풍경 감상', '서울의 가을 풍경을 감상하려고 합니다. 함께 갈 분 찾습니다.', 2, '서울', '2023-11-10', '2023-11-25', '', 'acc12.jpeg',
        '0', '', ''),
       (3, '2023-09-16', '부산 바다 여행', '부산의 멋진 바다를 즐기고 싶어요. 함께 바다 여행하실 분 찾아요.', 3, '부산', '2023-11-20', '2023-12-05', '',
        'acc13.jpeg', '0', '', ''),
       (4, '2023-09-17', '대구 역사 탐방', '대구의 역사적인 장소를 탐방하려고 합니다. 함께 탐방하실 분 구합니다.', 4, '대구', '2023-11-25', '2023-12-10', '',
        'acc14.webp', '0', '', ''),
       (5, '2023-09-18', '전주 음식 여행', '전주의 다양한 음식을 즐기려고 합니다. 함께 음식 여행하실 분 찾아요.', 5, '전주', '2023-12-01', '2023-12-15', '',
        'acc15.jpg', '0', '', ''),
       (5, '2023-09-19', '대전 문화 탐방', '대전의 문화적인 장소를 탐방하려고 합니다. 함께 문화 여행하실 분 찾습니다.', 6, '대전', '2023-12-05', '2023-12-20',
        '', 'acc16.jpg', '0', '', ''),
       (4, '2023-09-20', '인천 해변 휴식', '인천의 해변을 휴식하며 즐기고 싶습니다. 함께 휴식하실 분 모집합니다.', 7, '인천', '2023-12-10', '2023-12-25', '',
        'acc17.jpg', '0', '', ''),
       (3, '2023-09-21', '울산 해양 모험', '울산의 해양 모험을 즐기고 싶어요. 함께 해양 모험하실 분 구합니다.', 8, '울산', '2023-12-15', '2023-12-30', '',
        'acc18.jpg', '0', '', ''),
       (2, '2023-09-22', '세종 자연 탐험', '세종의 자연을 탐험하려고 합니다. 함께 자연 탐험하실 분 찾아요.', 9, '세종', '2023-12-20', '2024-01-05', '',
        'acc19.jpg', '0', '', ''),
       (1, '2023-09-23', '강원도 여행', '강원도의 아름다운 자연을 즐기려고 합니다. 함께 여행하실 분 찾습니다.', 10, '강원도', '2023-12-25', '2024-01-10',
        '', 'acc20.jpg', '0', '', ''),
       (5, '2023-09-24', '경기도 가을 풍경', '경기도의 가을 풍경을 감상하려고 합니다. 함께 가실 분 찾아요.', 11, '경기도', '2024-01-01', '2024-01-15', '',
        'acc21.jpg', '0', '', ''),
       (4, '2023-09-25', '전라북도 예술 여행', '전라북도에서 예술을 즐기고 싶어요. 함께 예술 여행하실 분 찾습니다.', 12, '전라북도', '2024-01-05',
        '2024-01-20', '', 'acc22.jpg', '0', '', ''),
       (3, '2023-09-26', '전라남도 해변 휴식', '전라남도의 아름다운 해변에서 휴식하려고 합니다. 함께 휴식하실 분 찾아요.', 13, '전라남도', '2024-01-10',
        '2024-01-25', '', 'acc23.jpg', '0', '', ''),
       (1, '2023-09-28', '경상남도 해양 모험', '경상남도의 해양 모험을 즐기고 싶어요. 함께 해양 모험하실 분 구합니다.', 15, '경상남도', '2024-01-20',
        '2024-02-05', '', 'acc24.jpg', '0', '', '');


INSERT INTO `comment` (co_content, co_regdate, user_number, ac_num)
VALUES ('동행 구하셨나요??', NOW(), 1, 2),
       ('동행 구하셨나요??', NOW(), 3, 5),
       ('동행 구하셨나요??', NOW(), 4, 5),
       ('동행 구하셨나요??', NOW(), 1, 3),
       ('동행 구하셨나요??', NOW(), 1, 2),
       ('동행 구하셨나요??', NOW(), 3, 5),
       ('동행 구하셨나요??', NOW(), 4, 5),
       ('동행 구하셨나요??', NOW(), 1, 3),
       ('동행 구하셨나요??', NOW(), 1, 2),
       ('동행 구하셨나요??', NOW(), 3, 5),
       ('동행 구하셨나요??', NOW(), 4, 5),
       ('동행 구하셨나요??', NOW(), 1, 3),
       ('동행 구하셨나요??', NOW(), 1, 2),
       ('동행 구하셨나요??', NOW(), 1, 2),
       ('동행 구하셨나요??', NOW(), 4, 5),
       ('동행 구하셨나요??', NOW(), 1, 3),
       ('동행 구하셨나요??', NOW(), 1, 2),
       ('동행 구하셨나요??', NOW(), 3, 5),
       ('동행 구하셨나요??', NOW(), 4, 5),
       ('동행 구하셨나요??', NOW(), 1, 6),
       ('동행 구하셨나요??', NOW(), 1, 6),
       ('동행 구하셨나요??', NOW(), 3, 6),
       ('동행 구하셨나요??', NOW(), 4, 6);

INSERT INTO `ticket_info` (`tic_airline_logo`,`tic_flight_departure_date`,`tic_flight_arrival_date`, `tic_seat_grade`,`tic_airline_name`, `tic_fee`,`tic_from_location`, `tic_to_location`,`tic_vihicle_id`,`user_number`)
VALUES
    ('eastar.jpg','202310230030', '202310220930','이코노미','이스타항공','580,000','인천','제주','ABC1004',1),
    ('jinair.jpg','202310230130', '202310221130','이코노미','이스타항공','590,000','김포','제주','ABD1005',1),
    ('eastar.jpg','202310230230', '202310221230','이코노미','이스타항공','520,000','인천','제주','ABE1006',2),
    ('eastar.jpg','202310230330', '202310221330','이코노미','이스타항공','530,000','인천','제주','ABF1007',2),
    ('eastar.jpg','202310230430', '202310221430','이코노미','이스타항공','540,000','인천','제주','ABG1008',3),
    ('eastar.jpg','202310230530', '202310221530','이코노미','이스타항공','550,000','인천','제주','ABH1009',3);

INSERT INTO `rent_info` (`rent_oil`,`rent_accommodate`,`rent_year`,`rent_type`,`rent_name`,`rent_company`,`rent_option`, `rent_price`,`rent_departure_date`, `rent_arrival_date`,`rent_img`, `user_number`)
VALUES
    ('휘발유',5,'2015','중형','쏘나타','KH렌터카', '여러개있음','69000','2023-08-22','2023-08-20','sonata.png',1),
    ('경유',9,'2015','대형','카니발','KH렌터카', '여러개있음','99000','2023-08-24','2023-08-19','carnival.png',1),
    ('경유',4,'2015','소형','ray','KH렌터카', '하나도없음','89000','2023-08-27','2023-08-25','ray.jpg',2),
    ('휘발유',5,'2015','중형','sonata','KH렌터카', '여러개있음','49000','2023-08-25','2023-08-23','sonata.jpg',2),
    ('경유',4,'2015','소형','casper','KH렌터카', '하나도없음','59000','2023-08-26','2023-08-24','casper.jpg',3),
    ('휘발유',4,'2015','소형','casper','KH렌터카', '여러개있음','69000','2023-08-25','2023-08-24','casper.jpg',3);


INSERT INTO `plan_board` (`pb_end_date`,`pb_region`,`pb_start_date`,`pb_title`,`pb_view_count`,`user_number`)
-- 게시글번호(자동생성), 돌아오는날, 여행지역, 떠나는날, 글제목, 조회수, 작성일자, 유저번호
VALUES
    ('2023-09-05','7','2023-09-05','yeong님의 여행일정','0','1'),
    ('2023-09-06','3','2023-09-05','yeong님의 여행일정','0','1'),
    ('2023-09-11','3','2023-09-10','jung님의 여행일정','0','1'),
    ('2023-09-16','6','2023-09-15','yeong님의 여행일정','0','1'),
    ('2023-10-01','5','2023-09-30','yeong님의 여행일정','0','1'),
    ('2023-09-17','7','2023-09-16','yeong님의 여행일정','0','1'),
    ('2023-09-17','3','2023-09-16','yeong님의 여행일정','0','1'),
    ('2023-11-02','1','2023-11-01','yeong님의 여행일정','0','1'),
    ('2023-11-03','3','2023-11-02','yeong님의 여행일정','0','1'),
    ('2023-11-05','2','2023-11-04','yeong님의 여행일정','0','1'),
    ('2023-11-06','4','2023-11-05','yeong님의 여행일정','0','1'),
    ('2023-11-08','7','2023-11-07','yeong님의 여행일정','0','1'),
    ('2023-09-05','7','2023-09-05','yeong님의 여행일정','0','1'),
    ('2023-09-06','3','2023-09-05','yeong님의 여행일정','0','1'),
    ('2023-09-11','3','2023-09-10','jung님의 여행일정','0','1'),
    ('2023-09-16','6','2023-09-15','yeong님의 여행일정','0','1'),
    ('2023-10-01','5','2023-09-30','yeong님의 여행일정','0','1'),
    ('2023-09-17','7','2023-09-16','yeong님의 여행일정','0','1'),
    ('2023-09-17','3','2023-09-16','yeong님의 여행일정','0','1'),
    ('2023-11-02','1','2023-11-01','yeong님의 여행일정','0','1'),
    ('2023-11-03','3','2023-11-02','yeong님의 여행일정','0','1'),
    ('2023-11-05','2','2023-11-04','yeong님의 여행일정','0','1'),
    ('2023-11-06','4','2023-11-05','yeong님의 여행일정','0','1'),
    ('2023-11-08','7','2023-11-07','yeong님의 여행일정','0','2');


INSERT INTO `plan_board_detail` (`pbd_category_group_name`,`pbd_date`,`pbd_place_name`,`pbdx`,`pbdy`,`pb_num`)
-- 세부일정번호(자동생성), 장소분류명, 일자번호(여행일 1일차 2일차), 장소명, x좌표, y좌표, 게시글번호
VALUES ('공항', '1', '김포국제공항 국내선', '126.80286551968986', '37.558949028658866', '1'),
       ('관광명소', '1', '올레길 7코스(서귀포-월평 올레)', '126.51530966206293', '33.23738579332568', '1'),
       ('관광명소', '1', '올레길 6코스(쇠소깍-서귀포 올레)', '126.59230607000688', '33.24127212174994', '1'),

       ('관광명소', '1', '낙산해변', '128.635755922233', '38.115871436438', '2'),
       ('관광명소', '2', '인구해변', '128.762513349412', '37.9691067123696', '2'),
       ('관광명소', '2', '하조대해수욕장', '128.720283162582', '38.0264231069221', '2'),


       ('관광명소', '1', '철원한탄강 주상절리길', '127.29991318328862', '38.17449924620733', '3'),
       ('관광명소', '1', '고석정꽃밭', '127.295051714024', '38.1870016232572', '3'),
       ('관광명소', '1', '삼부연폭포', '127.327984729691', '38.1402331739239', '3'),
       ('관광명소', '2', '백마고지전적지', '127.164964432568', '38.2697602685392', '3'),
       ('관광명소', '2', '직탕폭포', '127.2662648254772', '38.209583838174524', '3'),

       ('관광명소', '1', '만성리검은모래해변', '127.74547599836', '34.778856828051', '4'),
       ('관광명소', '1', '여수해상케이블카', '127.741531015302', '34.7305914837711', '4'),
       ('관광명소', '1', '유월드루지테마파크', '127.64145820546894', '34.747911242414574', '4'),
       ('관광명소', '2', '오동도', '127.766287676838', '34.7445973535257', '4'),
       ('관광명소', '2', '여수낭만포차거리', '127.74915280163137', '34.73648684742071', '4'),
       ('관광명소', '2', '이순신광장', '127.736049922969', '34.7394475965836', '4'),

       ('관광명소', '1', '해운대해수욕장', '129.159854668484', '35.1585232170784', '5'),
       ('관광명소', '1', '광안리해수욕장', '129.118976093583', '35.1531932736837', '5'),
       ('관광명소', '1', '송도해수욕장', '129.016954361828', '35.0759454359851', '5'),
       ('관광명소', '2', '감천문화마을', '129.00942831915552', '35.09630012826786', '5'),
       ('관광명소', '2', '오륙도스카이워크', '129.124487940263', '35.1006495749289', '5'),
       ('관광명소', '2', '송도해상케이블카 송도베이스테이션', '129.02365149179522', '35.07627090072804', '5'),


       ('관광명소', '1', '올레길 7코스(서귀포-월평 올레)', '126.51530966206293', '33.23738579332568', '6'),
       ('관광명소', '1', '올레길 6코스(쇠소깍-서귀포 올레)', '126.59230607000688', '33.24127212174994', '6'),
       ('관광명소', '2', '올레길 1코스(시흥-광치기 올레)', '126.90636648646604', '33.47866074455451', '6'),

       ('관광명소', '1', '낙산해변', '128.635755922233', '38.115871436438', '7'),
       ('관광명소', '1', '인구해변', '128.762513349412', '37.9691067123696', '7'),
       ('관광명소', '2', '하조대해수욕장', '128.720283162582', '38.0264231069221', '7'),

       ('관광명소', '1', '경복궁', '126.97689786832184', '37.577613288258206', '8'),
       ('관광명소', '1', '남산서울타워', '126.98820799353979', '37.55127433407266', '8'),
       ('관광명소', '1', '롯데월드', '127.09811980036908', '37.51113059993883', '8'),
       ('관광명소', '1', '북촌한옥마을', '126.98481245064092', '37.581768153833444', '8'),


       ('관광명소', '1', '동호해변', '128.68318745672153', '38.05856481714816', '9'),
       ('관광명소', '1', '오색약수', '128.445724786556', '38.0776566720389', '9'),
       ('관광명소', '2', '설악산', '128.4653615314634', '38.11912517931733', '9'),


       ('관광명소', '1', '을왕리해수욕장', '126.372737043106', '37.4462920026041', '10'),
       ('관광명소', '1', '인천차이나타운', '126.6186319858808', '37.475536458050655', '10'),
       ('관광명소', '1', '월미도', '126.599231057618', '37.4717375833542', '10'),
       ('관광명소', '2', '석모도미네랄온천', '126.31271829654287', '37.68550157695992', '10'),

       ('관광명소', '1', '대천해수욕장', '126.513481592784', '36.3102317300706', '11'),
       ('관광명소', '1', '국립오서산자연휴양림', '126.67243366565056', '36.455128012004835', '11'),
       ('관광명소', '2', '죽도보물섬관광지', '126.539824971482', '36.2785712228836', '11'),

       ('공항', '1', '인천국제공항', '126.45042670237', '37.4494502813442', '12'),
       ('관광명소', '1', '이호테우해수욕장', '126.452690819027', '33.4973768007144', '12'),
       ('관광명소', '1', '981 파크 전기차충전소', '126.36652604514502', '33.39063893891744', '12'),
       ('음식점', '1', '마우돈', '126.91104478669043', '33.44678688791305', '12'),
       ('관광명소', '1', '함덕해수욕장', '126.669238934013', '33.5430615661113', '12'),
       ('관광명소', '2', '월정리해수욕장', '126.795805057888', '33.556469394054', '12'),
       ('관광명소', '2', '우도', '126.955582257582', '33.5044199749505', '12'),
       ('관광명소', '2', '새별오름', '126.3577306657398', '33.366277591139294', '12'),
       --2세트 시작(3줄)
       ('공항', '1', '김포국제공항 국내선', '126.80286551968986', '37.558949028658866', '13'),
       ('관광명소', '1', '올레길 7코스(서귀포-월평 올레)', '126.51530966206293', '33.23738579332568', '13'),
       ('관광명소', '1', '올레길 6코스(쇠소깍-서귀포 올레)', '126.59230607000688', '33.24127212174994', '13'),

       ('관광명소', '1', '낙산해변', '128.635755922233', '38.115871436438', '14'),
       ('관광명소', '2', '인구해변', '128.762513349412', '37.9691067123696', '14'),
       ('관광명소', '2', '하조대해수욕장', '128.720283162582', '38.0264231069221', '14'),


       ('관광명소', '1', '철원한탄강 주상절리길', '127.29991318328862', '38.17449924620733', '15'),
       ('관광명소', '1', '고석정꽃밭', '127.295051714024', '38.1870016232572', '15'),
       ('관광명소', '1', '삼부연폭포', '127.327984729691', '38.1402331739239', '15'),
       ('관광명소', '2', '백마고지전적지', '127.164964432568', '38.2697602685392', '15'),
       ('관광명소', '2', '직탕폭포', '127.2662648254772', '38.209583838174524', '15'),

       ('관광명소', '1', '만성리검은모래해변', '127.74547599836', '34.778856828051', '16'),
       ('관광명소', '1', '여수해상케이블카', '127.741531015302', '34.7305914837711', '16'),
       ('관광명소', '1', '유월드루지테마파크', '127.64145820546894', '34.747911242414574', '16'),
       ('관광명소', '2', '오동도', '127.766287676838', '34.7445973535257', '16'),
       ('관광명소', '2', '여수낭만포차거리', '127.74915280163137', '34.73648684742071', '16'),
       ('관광명소', '2', '이순신광장', '127.736049922969', '34.7394475965836', '16'),

       ('관광명소', '1', '해운대해수욕장', '129.159854668484', '35.1585232170784', '17'),
       ('관광명소', '1', '광안리해수욕장', '129.118976093583', '35.1531932736837', '17'),
       ('관광명소', '1', '송도해수욕장', '129.016954361828', '35.0759454359851', '17'),
       ('관광명소', '2', '감천문화마을', '129.00942831915552', '35.09630012826786', '17'),
       ('관광명소', '2', '오륙도스카이워크', '129.124487940263', '35.1006495749289', '17'),
       ('관광명소', '2', '송도해상케이블카 송도베이스테이션', '129.02365149179522', '35.07627090072804', '17'),


       ('관광명소', '1', '올레길 7코스(서귀포-월평 올레)', '126.51530966206293', '33.23738579332568', '18'),
       ('관광명소', '1', '올레길 6코스(쇠소깍-서귀포 올레)', '126.59230607000688', '33.24127212174994', '18'),
       ('관광명소', '2', '올레길 1코스(시흥-광치기 올레)', '126.90636648646604', '33.47866074455451', '18'),

       ('관광명소', '1', '낙산해변', '128.635755922233', '38.115871436438', '19'),
       ('관광명소', '1', '인구해변', '128.762513349412', '37.9691067123696', '19'),
       ('관광명소', '2', '하조대해수욕장', '128.720283162582', '38.0264231069221', '19'),

       ('관광명소', '1', '경복궁', '126.97689786832184', '37.577613288258206', '20'),
       ('관광명소', '1', '남산서울타워', '126.98820799353979', '37.55127433407266', '20'),
       ('관광명소', '1', '롯데월드', '127.09811980036908', '37.51113059993883', '20'),
       ('관광명소', '1', '북촌한옥마을', '126.98481245064092', '37.581768153833444', '20'),


       ('관광명소', '1', '동호해변', '128.68318745672153', '38.05856481714816', '21'),
       ('관광명소', '1', '오색약수', '128.445724786556', '38.0776566720389', '21'),
       ('관광명소', '2', '설악산', '128.4653615314634', '38.11912517931733', '21'),


       ('관광명소', '1', '을왕리해수욕장', '126.372737043106', '37.4462920026041', '22'),
       ('관광명소', '1', '인천차이나타운', '126.6186319858808', '37.475536458050655', '22'),
       ('관광명소', '1', '월미도', '126.599231057618', '37.4717375833542', '22'),
       ('관광명소', '2', '석모도미네랄온천', '126.31271829654287', '37.68550157695992', '22'),

       ('관광명소', '1', '대천해수욕장', '126.513481592784', '36.3102317300706', '23'),
       ('관광명소', '1', '국립오서산자연휴양림', '126.67243366565056', '36.455128012004835', '23'),
       ('관광명소', '2', '죽도보물섬관광지', '126.539824971482', '36.2785712228836', '23'),

       ('공항', '1', '인천국제공항', '126.45042670237', '37.4494502813442', '24'),
       ('관광명소', '1', '이호테우해수욕장', '126.452690819027', '33.4973768007144', '24'),
       ('관광명소', '1', '981 파크 전기차충전소', '126.36652604514502', '33.39063893891744', '24'),
       ('음식점', '1', '마우돈', '126.91104478669043', '33.44678688791305', '24'),
       ('관광명소', '1', '함덕해수욕장', '126.669238934013', '33.5430615661113', '24'),
       ('관광명소', '2', '월정리해수욕장', '126.795805057888', '33.556469394054', '24'),
       ('관광명소', '2', '우도', '126.955582257582', '33.5044199749505', '24'),
       ('관광명소', '2', '새별오름', '126.3577306657398', '33.366277591139294', '24');


INSERT INTO chat_room (`user_number1`, `user_number2`)
VALUES
    (1, 2),
    (1, 3),
    (1, 4),
    (2, 3);




INSERT INTO chat_message (`room_id`, `content`, `sender_id`,`send_time`)
VALUES
    (1, '1번방임. 안녕하세요 저는 1번입니다.', 1, '2023-08-01 14:10:41'),
    (1, '저는 2번입니다.', 2, NOW()),
    (2, '2번방의 1번이보낸 메시지', 1, '2023-09-01 14:10:41'),
    (2, '2번방의 3번이 보낸 메시지', 3, NOW()),
    (3, '3번방의 1번이 보낸 메시지', 1, NOW()),
    (3, '3번방의 4번이 보낸 메시지', 4, '2023-09-08 14:10:41'),
    (4, '4번방의 2번이 3번에게 보낸다..', 2, NOW()),
    (4, '4번방의 3번이 2번에게 보낸다.', 3, NOW());



INSERT INTO `com_info` (`com_name`, `com_location`, `com_tel`, `com_opentime`)
VALUES ('별빛렌트카', '서울시 강남구 논현로30길', '02-1111-4444', '평일 08:00 - 20:30 주말 08:00 - 20:30 (토) / 08:00 - 20:30 (일)'),
       ('달빛렌트카', '제주특별자치도 제주시 공항로1길', '02-2222-4444', '평일 08:00 - 20:30 주말 08:00 - 20:30 (토) / 08:00 - 20:30 (일)'),
       ('신화렌트카', '강원 강릉시 율곡로 2600', '02-3333-4444', '평일 08:00 - 20:30 주말 08:00 - 20:30 (토) / 08:00 - 20:30 (일)'),
       ('착한렌트카', '부산 동구 중앙대로 206', '02-4444-4444', '평일 08:00 - 20:30 주말 08:00 - 20:30 (토) / 08:00 - 20:30 (일)'),
       ('저렴한렌트카', '전남 여수시 율촌면 여순로 386', '02-5555-4444', '평일 08:00 - 20:30 주말 08:00 - 20:30 (토) / 08:00 - 20:30 (일)'),
       ('우리렌트카', '경북 경주시 건천읍 내외로 2871-40', '02-6666-4444', '평일 08:00 - 20:30 주말 08:00 - 20:30 (토) / 08:00 - 20:30 (일)');

INSERT INTO `car_info` (`car_name`, `car_year`, `car_nation`, `car_type`, `oil_type`, `driver_age`, `car_people`,
                        `car_price`, `car_discount`, `com_id`, `car_option`, `car_img`)
VALUES ('더 뉴 레이', '20년식 ', '국내', '경형', '디젤', '21세 이상', 4, 100000, 25000, 1, '옵션없음', 'ray.png'),
       ('더 뉴 레이', '22년식 ', '국내', '경형', '가솔린', '21세 이상', 4, 150000, 50000, 2, '블랙박스, 내비게이션, 후방감지센서', 'ray.png'),
       ('더 뉴 레이', '19년 출시', '국내', '경형', '전기', '26세 이상', 4, 120000, 30000, 5, '후방카메라', 'ray.png'),
       ('카니발', '17년식', '국내', '승합', '디젤', '26세 이상', 7, 200000, 70000, 1, '블랙박스, 내비게이션, 금연차량', 'canival.png'),
       ('카니발', '20년식 ', '국내', '승합', 'LPG', '21세 이상', 9, 130000, 35000, 4, '블랙박스, 후방카메라', 'canival.png'),
       ('캐스퍼', '18년식', '국내', '경형', '디젤', '21세 이상', 5, 250000, 78000, 2, '옵션없음', 'casper.png'),
       ('더 뉴 스파크', '21년식', '해외', '경형', '경유', '26세 이상', 5, 140000, 50000, 2, '블랙박스, 내비게이션', 'spark.png'),
       ('더 뉴 아반떼', '18년식', '국내', '승용', '하이브리드', '26세 이상', 5, 150000, 50000, 3,
        '내비게이션, 열선시트, 블랙박스, 선루프, 운전석 에어백, 금연차량', 'avantte.png'),
       ('쏘나타', '16년식', '국내', '승용', 'LPG', '26세 이상', 5, 180000, 75000, 4, '블랙박스, 내비게이션', 'sonata.png'),
       ('코나', '22년식', '국내', 'SUV', '가솔린', '21세 이상', 4, 250000, 100000, 5, '블랙박스, 내비게이션, 후방카메라, 금연차량, 10에어백, 핸들열선, 후방센서, 선루프', 'cona.png'),
       ('더 뉴 스타렉스', '21년식', '해외', '승합', '디젤', '26세 이상', 9, 250000, 98000, 6,
        '블랙박스, 내비게이션, 운전석 에어백, 조수석 에어백, 핸들열선, 후방카메라, 후방센서', 'theNewStarex.png');
