drop table ikep4_bd_board;

CREATE TABLE `oknode_board` (
  `board_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시판 ID',
  `board_parent_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '게시판 부모 ID (하위 게시판이 없는 경우 게시판 ID와 동일)',
  `sort_order` int(5) DEFAULT NULL COMMENT '같은 부모 폴더 ID값을 공유하는 폴더들의 정렬 순서 값',
  `board_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시판 이름',
  `board_root_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '트리 작성시 다중 TREE를 지원하기 위해 필요한 ID 값',
  `board_description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '게시판 설명',
  `board_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시판 폴더 속성 타입 (0:게시글 등록용, 1:URL링크용게시판, 2:게시판 카테고리 구분용 DUMMY게시판)',
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '게시판 타입을 URL 링크용으로 선택한 경우 URL주소',
  `list_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '목록 조회 VIEW 타입 (0:목록보기, 1:요약보기, 2:갤러리형 보기, 3:간단목록보기)',
  `anonymous` int(1) DEFAULT '0' COMMENT '익명 사용자 지원 여부 (익명게시판:1, 실명게시판:0)',
  `rss` int(1) DEFAULT '1' COMMENT 'RSS2.0, ATOM1.0 지원 여부 (0:지원, 1:미지원)',
  `file_size` decimal(27,0) DEFAULT NULL COMMENT '첨부파일 업로드 제한 사이즈 (단위:MBTYPE)',
  `image_file_size` decimal(27,0) DEFAULT NULL COMMENT '이미지 파일 업로드 제한 사이즈 (단위:KBYTE)',
  `image_width` int(5) DEFAULT NULL COMMENT '이미지 파일의 최대 허용 넓이 (PIXEL)',
  `page_num` int(5) DEFAULT NULL COMMENT '한화면에 보여질 게시판 목록의 갯수 (10/15/20/30/40/50)',
  `doc_popup` int(1) DEFAULT '0' COMMENT '게시물 팝업 여부 (0:팝업미표시, 1:팝업표시)',
  `reply` int(1) DEFAULT '0' COMMENT '답글 사용 여부 선택 (0:사용-최대 5 DEPTH, 1:미사용)',
  `linereply` int(1) DEFAULT '0' COMMENT '댓글 허용 여부 (0:사용-최대 3 DEPTH, 1:미사용)',
  `restriction_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '파일 확장자 제한 타입(구분자:^) 디폴트:EXE^BAT^COM',
  `read_permission` int(1) DEFAULT '0' COMMENT '게시판 읽기 권한 지원 여부 (0:권한없음, 1:읽기권한)',
  `write_permission` int(1) DEFAULT '0' COMMENT '게시판 쓰기 권한 지원 여부 (0:권한없음, 1:쓰기권한)',
  `portal_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '포탈 ID',
  `register_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시판 등록자 ID',
  `register_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시판 등록자 이름',
  `regist_date` datetime NOT NULL COMMENT '게시판 등록일',
  `updater_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시판 수정자 ID',
  `updater_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시판 수정자 이름',
  `update_date` datetime NOT NULL COMMENT '게시판 수정일자',
  `board_popup` int(1) NOT NULL DEFAULT '0' COMMENT '게시판 타입이 URL 링크용인 경우 게시판 팝업 여부 (0:팝업, 1:팝업아님)',
  `allow_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '1.파일 첨부 옵션이 파일확장자 허용방식인 경우 각 확장자별 콤마로 구분한 스트링 2.파일종류 허용방식인 경우 TXT, IMG, DOC, ADO, VOD, COMP, APP 를 콤마로 구분한 스크링 (모두 허용인 경우 ALLOWALL)',
  `file_attach_option` int(1) NOT NULL DEFAULT '0' COMMENT '파일 첨부 옵션 (0:파일확장자 허용방식, 1:파일종류 허용방식)',
  `portlet` int(1) DEFAULT '0' COMMENT '포탈 메인화면 전사게시판 포틀릿 설정여부 (0:미설정, 1:설정)',
  `board_delete` int(1) NOT NULL DEFAULT '0' COMMENT '게시판 삭제 여부 (0 OR NULL:미삭제, 1:삭제)',
  `board_english_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시판 영문 이름',
  `board_english_description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '게시판 영문 설명',
  `prefix_type` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '말머리 유형 리스트',
  `is_use` int(1) DEFAULT '1' COMMENT '게시판 사용유무 (0:사용안함, 1:사용)',
  `item_display` int(1) DEFAULT '1' COMMENT '게시판 목록 공지등록 사용 여부 (0:공지사항 사용안함, 1:공지사항 사용)',
  `post_date` int(1) DEFAULT '1' COMMENT '게시기간 설정 사용여부 (0:게시기간 설정 사용안함, 1:게시기간 설정 사용)',
  `is_tag` int(1) DEFAULT '1' COMMENT '태그 사용 여부 (0:태그 등록 사용안함, 1:태그 등록 사용)',
  `gs_item_type` int(1) DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시판 정보';

 

 

 

 

 drop table ikep4_bd_item;

CREATE TABLE `oknode_board_item` (
  `item_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시글 ID',
  `board_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시판 ID',
  `item_parent_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '게시글 부모 ID (하위 게시글이 없는 경우 게시글 아이템 ID와 동일)',
  `item_group_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '게시글 THREAD의 그룹 ID',
  `step` int(5) NOT NULL COMMENT '같은 THREAD 그룹에 속해있는 게시물들간의 순서. 같은 THREAD에서 단순 정렬 순서',
  `indentation` int(5) NOT NULL COMMENT '게시물 THREAD의 LEVEL. THREAD 표시할때 들여쓰기의 숫자',
  `item_seq_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '같은 게시판 내에서 해당 게시물에 순차적으로 부여되는 번호. 같은 게시판 내 게시글의 MAX 값 + 1',
  `item_display` int(1) NOT NULL DEFAULT '0' COMMENT '전사 게시판 목록의 상단 노출 여부 (0:목록상단에 노출하지 않음, 1:목록상단에 항상 노출함)',
  `title` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '게시물의 제목',
  `contents` longtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '게시물의 내용',
  `text_contents` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '게시물 TEXT 내용',
  `hit_count` int(5) NOT NULL COMMENT '게시물 조회수',
  `recommend_count` int(5) NOT NULL COMMENT '게시물 추천수',
  `reply_count` int(5) NOT NULL COMMENT '게시물의 답변 게시물의 수',
  `linereply_count` int(5) NOT NULL COMMENT '게시물 한줄 답변(댓글)의 수',
  `attach_file_count` int(5) NOT NULL COMMENT '게시물 첨부 파일 수',
  `start_date` datetime NOT NULL COMMENT '게시물 게시 시작일자',
  `end_date` datetime NOT NULL COMMENT '게시물 게시 종료일자',
  `item_delete` int(1) NOT NULL DEFAULT '0' COMMENT '게시물 삭제여부 (NULL OR 0:미삭제, 1:하위답글이 존재하는 게시글의 삭제, 2:물리적 삭제, 3:임시저장)',
  `register_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '등록자 ID',
  `register_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '등록자 이름',
  `regist_date` datetime NOT NULL COMMENT '등록일시',
  `updater_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '수정일 ID',
  `updater_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '수정자 이름',
  `update_date` datetime NOT NULL COMMENT '수정일시',
  `mail_count` int(5) NOT NULL DEFAULT '0' COMMENT '메일 발송 건수',
  `mblog_count` int(5) DEFAULT '0' COMMENT '마이크로 블로깅 발송 건수',
  `image_file_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '웹에디터상에서 복수개의 이미지를 등록한 경우 첫번째 대표 이미지 파일 ID (갤러리형 보기를 할 경우 THUMB NAIL 이미지로 표시됨)',
  `dynb_board_id` varchar(27) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '동적 게시판 임시저장함에서 추적 키로 사용.',
  `register_dept` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '등록자 부서명',
  `updater_dept` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '수정자 부서명',
  `read_list_permission` int(1) DEFAULT NULL COMMENT '동적게시판 - 목록읽기권한',
  `read_item_permission` int(1) DEFAULT NULL COMMENT '동적게시판 - 게시글읽기권한',
  `share_scope_option` int(1) DEFAULT NULL COMMENT '동적게시판 - 공유범위',
  `prefix` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '말머리',
  `gs_item_type` int(1) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `idx_bd_item_ie4` (`board_id`,`item_id`),
  KEY `idx_bd_item_ie1` (`register_id`,`item_delete`,`item_id`,`regist_date`),
  KEY `idx_bd_item_ie2` (`board_id`,`item_display`,`item_group_id`,`step`),
  KEY `idx_bd_item_ie3` (`regist_date`),
  KEY `idx_bd_item_ie5` (`item_group_id`),
  KEY `idx_bd_item_ie6` (`start_date`,`regist_date`),
  KEY `idx_bd_item_ie7` (`board_id`),
  CONSTRAINT `fk_oknode_bd_item_oknode_bd_board` FOREIGN KEY (`board_id`) REFERENCES `oknode_board` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물 정보';


 
