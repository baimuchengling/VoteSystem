package com.xmchx.vote.payload;

import lombok.Data;

import java.util.List;

/**
 * @author zhilin
 * @date 2020/1/30 9:43
 */
@Data
public class PollInfoResponse {
    private String title;
    private List<String> labels;
    private List<Integer> values;
}
