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

    module LATEXBuilderOverride
      def inline_fn(id)
        if @book.config['footnotetext']
          macro("footnotemark[#{@chapter.footnote(id).number}]", '')
        elsif @doc_status[:caption] || @doc_status[:table] || @doc_status[:column] || @doc_status[:dt]
          @foottext[id] = @chapter.footnote(id).number
          macro('protect\\footnotemark', '')
        else
          macro('endnote', compile_inline(@chapter.footnote(id).content.strip))
        end
      rescue KeyError
        app_error "unknown footnote: #{id}"
      end

      def inline_bib(id)
        macro('reviewbibref', @chapter.bibpaper(id).number, bib_label(id))
      end

      def bibpaper(lines, id, caption)
        puts %Q(\\bibitem[#{escape(id)}]{bib:#{id}} #{split_paragraph(lines).join("\n\n")})
      end
    end
  
    class HTMLBuilder
      prepend HTMLBuilderOverride
    end

    class LATEXBuilder
      prepend LATEXBuilderOverride
    end
  end