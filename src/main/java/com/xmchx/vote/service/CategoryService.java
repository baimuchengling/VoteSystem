package com.xmchx.vote.service;

import com.xmchx.vote.payload.PagedResponse;

/**
 * @author zhilin
 * @date 2020/1/14 19:11
 */
public interface CategoryService {

    PagedResponse<?> getAllCategories(int page, int size, String sidx, String order);
}
