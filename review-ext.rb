module ReVIEW
    module HTMLBuilderOverride
      def inline_fn(id)
        if @book.config['epubversion'].to_i == 3
          %Q(<a id="fnb-#{normalize_id(id)}" href="#fn-#{normalize_id(id)}" class="noteref" epub:type="noteref">&lt;<span class="tcy">#{@chapter.footnote(id).number}</span>&gt;</a>)
        else
          %Q(<a id="fnb-#{normalize_id(id)}" href="#fn-#{normalize_id(id)}" class="noteref">&lt;<span class="tcy">#{@chapter.footnote(id).number}</span>&gt;</a>)
        end
      rescue KeyError
        error "unknown footnote: #{id}"
      end

      def footnote(id, str)
        if @book.config['epubversion'].to_i == 3
          puts %Q(<div class="footnote" epub:type="footnote" id="fn-#{normalize_id(id)}"><p class="footnote">&lt;<span class="tcy">#{@chapter.footnote(id).number}</span>&gt; #{compile_inline(str)}</p></div>)
        else
          puts %Q(<div class="footnote" id="fn-#{normalize_id(id)}"><p class="footnote">&lt;<a href="#fnb-#{normalize_id(id)}"><span class="tcy">#{@chapter.footnote(id).number}</span></a>&gt; #{compile_inline(str)}</p></div>)
        end
      end
    end
  
    class HTMLBuilder
      prepend HTMLBuilderOverride
    end
  end