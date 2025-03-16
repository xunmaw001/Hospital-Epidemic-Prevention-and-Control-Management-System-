package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.FangyibaobeiDao;
import com.entity.FangyibaobeiEntity;
import com.service.FangyibaobeiService;
import com.entity.vo.FangyibaobeiVO;
import com.entity.view.FangyibaobeiView;

@Service("fangyibaobeiService")
public class FangyibaobeiServiceImpl extends ServiceImpl<FangyibaobeiDao, FangyibaobeiEntity> implements FangyibaobeiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FangyibaobeiEntity> page = this.selectPage(
                new Query<FangyibaobeiEntity>(params).getPage(),
                new EntityWrapper<FangyibaobeiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FangyibaobeiEntity> wrapper) {
		  Page<FangyibaobeiView> page =new Query<FangyibaobeiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FangyibaobeiVO> selectListVO(Wrapper<FangyibaobeiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FangyibaobeiVO selectVO(Wrapper<FangyibaobeiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FangyibaobeiView> selectListView(Wrapper<FangyibaobeiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FangyibaobeiView selectView(Wrapper<FangyibaobeiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
