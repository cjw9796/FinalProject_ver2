package com.kh.myproject.community.plan.service;

import com.kh.myproject.community.plan.model.dto.PlanBoardDTO;
import com.kh.myproject.community.plan.model.dto.PlanBoardDetailDTO;
import com.kh.myproject.community.plan.model.entity.PlanBoard;
import com.kh.myproject.community.plan.model.entity.PlanBoardDetail;
import com.kh.myproject.community.plan.repository.PlanBoardDetailRepository;
import com.kh.myproject.community.plan.repository.PlanBoardRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
public class PlanBoardService {


    @Autowired
    private PlanBoardRepository planBoardRepository;

    @Autowired
    private PlanBoardDetailRepository detailRepository;

    // 3. Controller에서 넘겨준 boardDTO, planList 받아줌
    public void savePlanBoard(PlanBoardDTO boardDTO,
                              List<PlanBoardDetailDTO> planList) {

        // 4. db에 저장하기 위해 boardDTo를 엔티티로 변환
        PlanBoard planBoard = boardDTO.toEntity();

        for (int i = 0; i < planList.size(); i++) {

            // 5. list[i]에 있는 dto객체를 detailDTO에 저장
            PlanBoardDetailDTO detailDTO = planList.get(i);

            // 6. 일정이 어느게시글인지를 저장
            detailDTO.setPlanBoard(planBoard);

            // 7. 일정DTO를 db에 저장하기 위해 엔티티로 변환
            PlanBoardDetail detail = detailDTO.toEntity();

            // 8. 일정하나를 db에 저장 => 5번 부터 다시(List에 size만큼 반복)
            detailRepository.save(detail);
        }

    }


    // DB에서 데이터 가져와서 Plan_main에 출력
    public List<PlanBoardDTO> getAllPlanBoardList() {

        List<PlanBoardDTO> result = new ArrayList<>();

        List<PlanBoard> list = planBoardRepository.findAllByOrderByPbNumDesc();

        for(int i = 0; i < list.size(); i++){
            PlanBoardDTO boardDTO = list.get(i).toDto();
            result.add(boardDTO);
        }
        return result;
    }

    public List<PlanBoardDetailDTO> getAllPlanBoardDetailList(){
        List<PlanBoardDetailDTO> result = new ArrayList<>();

        List<PlanBoardDetail> list = detailRepository.findAll();

        for(int i = 0; i < list.size(); i++){
            PlanBoardDetailDTO boardDetailDTO = list.get(i).toDto();
            result.add(boardDetailDTO);
        }

        return result;
    }

    public PlanBoardDTO getOnePlanBoard(Long pbNum){

        PlanBoard planBoard = planBoardRepository.findByPbNum(pbNum);
        log.info("getOnePlanBoard={}", planBoard);

        return planBoard.toDto();
    }

    public List<PlanBoardDetailDTO> getAllPlanBoardDetailByPbNum(Long pbNum){

        //db에서 가져온 entity 리스트
        List<PlanBoardDetail> detailList = detailRepository.findByPlanBoard_pbNum(pbNum);

        //리턴할 dto 리스트
        List<PlanBoardDetailDTO> dtoList = new ArrayList<>();

        //entity 리스트에서 하나하나 꺼내서 dto로 변환한 다음 dto리스트에 저장
        for(int i = 0; i < detailList.size(); i++){
            dtoList.add(detailList.get(i).toDto());
        }

        return dtoList;
    }

    public int getMaxByPbNum(Long pbNum){

        return detailRepository.getMaxByPbNum(pbNum);
    }

    public void updatePlanBoard(PlanBoardDTO planBoardDTO){

        planBoardRepository.updatePlanBoardByPbNum(planBoardDTO.toEntity());
    }

    public void deleteAllPlanBoardDetail(Long pbNum){
        detailRepository.deleteAllByPlanBoard_pbNum(pbNum);
    }

    public void deleteBoard(Long pbNum){
        planBoardRepository.deleteById(pbNum);
    }


}