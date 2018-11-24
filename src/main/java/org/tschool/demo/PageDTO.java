
package org.tschool.demo;

import java.util.Collection;


public class PageDTO<T> {

    private Collection<T> content;

    private int count;

    public Collection getContent() {
        return content;
    }

    public PageDTO setContent(Collection<T> content) {
        this.content = content;
        return this;
    }

    public int getCount() {
        return count;
    }

    public PageDTO setCount(int count) {
        this.count = count;
        return this;
    }
}
