
package org.tschool.demo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api")
public class RestResource {

    @RequestMapping("/")
    public PageDTO<String> find(@RequestParam("page") int pageNum,
                                @RequestParam("count") int count) {
        List<ContentDTO> content = new ArrayList<>();
        for (int i = pageNum * count; i < pageNum * count + count; i++) {
            content.add(new ContentDTO()
                    .setData(String.valueOf(i))
                    .setId(i));
        }
        return new PageDTO()
                .setContent(content)
                .setCount(125);
    }
}
