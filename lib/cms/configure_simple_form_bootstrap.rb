SimpleForm.setup do |config|
  config.wrappers :default, tag: :div, class: 'form-group', error_class: 'has-error' do |b|
    b.use :html5
    b.use :min_max
    b.use :maxlength
    b.use :placeholder

    b.optional :pattern
    b.optional :readonly

    b.use :label
    b.use :input
    b.use :error, wrap_with: { tag: :span, class: 'help-block' }
    b.use :hint, wrap_with: { tag: :p, class: 'help-block' }
  end

  config.wrappers :browsercms, tag: 'div', class: 'control-group row', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.use :input
    b.use :error, wrap_with: {tag: 'span', class: 'help-inline'}
    b.use :hint, wrap_with: {tag: 'p', class: 'help-block'}
  end
    
  config.wrappers :checkbox, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'checkbox' do |c|
      c.wrapper tag: :label do |a|
        a.use :input
        a.use :label_text
      end
    end
    b.use :error, wrap_with: { tag: :span, class: "help-block" }
    b.use :hint,  wrap_with: { tag: :p, class: "help-block" }
  end

  config.wrappers :radio, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'radio' do |c|
      c.wrapper tag: :label do |a|
        a.use :input
        a.use :label_text
      end
    end
    b.use :error, wrap_with: { tag: :span, class: "help-block" }
    b.use :hint,  wrap_with: { tag: :p, class: "help-block" }
  end

  config.wrappers :horizontal, tag: :div, class: 'form-group', error_class: 'has-error',
                    label_html: { class: 'col-sm-3 col-md-3 col-lg-2 control-label' } do |b|
    b.use :html5
    b.use :min_max
    b.use :maxlength
    b.use :placeholder

    b.optional :pattern
    b.optional :readonly

    b.use :label
    b.wrapper tag: :div, class: 'col-sm-9 col-md-9 col-lg-10' do |i|
      i.use :input
      i.use :error, wrap_with: { tag: :span, class: 'help-block' }
      i.use :hint, wrap_with: { tag: :p, class: 'help-block' }
    end
  end

  config.wrappers :horizontal_checkbox, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'col-sm-offset-3 col-sm-9 col-md-offset-3 col-md-9 col-lg-offset-2 col-lg-10' do |i|
      i.wrapper tag: :div, class: 'checkbox' do |c|
        c.wrapper tag: :label do |a|
          a.use :input
          a.use :label_text
        end
      end
      i.use :error, wrap_with: { tag: :span, class: "help-block" }
      i.use :hint,  wrap_with: { tag: :p, class: "help-block" }
    end
  end

  config.wrappers :horizontal_radio, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'col-sm-offset-3 col-sm-9 col-md-offset-3 col-md-9 col-lg-offset-2 col-lg-10' do |i|
      i.wrapper tag: :div, class: 'radio' do |c|
        c.wrapper tag: :label do |a|
          a.use :input
          a.use :label_text
        end
      end
      i.use :error, wrap_with: { tag: :span, class: "help-block" }
      i.use :hint,  wrap_with: { tag: :p, class: "help-block" }
    end
  end

  config.wrappers :inline, tag: :div, class: 'form-group', error_class: 'has-error',
                    label_html: { class: 'sr-only' } do |b|
    b.use :html5
    b.use :min_max
    b.use :placeholder

    b.optional :pattern
    b.optional :readonly

    b.use :label
    b.use :input
  end

  config.wrappers :inline_checkbox, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'checkbox' do |c|
      c.wrapper tag: :label do |a|
        a.use :input
        a.use :label_text
      end
    end
  end

  config.wrappers :inline_radio, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'radio' do |c|
      c.wrapper tag: :label do |a|
        a.use :input
        a.use :label_text
      end
    end
  end
end
