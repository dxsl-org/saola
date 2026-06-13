import lustre/effect.{type Effect}
import saola/preview/model.{
  type CarouselMessage, type DatePickerMessage, type Message, type Model,
  CarouselHasChanged, CarouselNavNextClicked, CarouselNavPrevClicked,
  DatePickerClose, DatePickerDateSelected, DatePickerMonthChanged,
  DatePickerOpen,
}

pub fn handle_date_picker_1(
  model: Model,
  msg: DatePickerMessage,
) -> #(Model, Effect(Message)) {
  case msg {
    DatePickerDateSelected(date) -> #(
      model.Model(
        ..model,
        date_picker_1_state: model.DatePickerState(
          ..model.date_picker_1_state,
          selected_date: date,
          open: False,
        ),
      ),
      effect.none(),
    )
    DatePickerMonthChanged(year, month) -> #(
      model.Model(
        ..model,
        date_picker_1_state: model.DatePickerState(
          ..model.date_picker_1_state,
          viewed_year: year,
          viewed_month: month,
        ),
      ),
      effect.none(),
    )
    DatePickerOpen -> #(
      model.Model(
        ..model,
        date_picker_1_state: model.DatePickerState(
          ..model.date_picker_1_state,
          open: True,
        ),
      ),
      effect.none(),
    )
    DatePickerClose -> #(
      model.Model(
        ..model,
        date_picker_1_state: model.DatePickerState(
          ..model.date_picker_1_state,
          open: False,
        ),
      ),
      effect.none(),
    )
  }
}

pub fn handle_date_picker_2(
  model: Model,
  msg: DatePickerMessage,
) -> #(Model, Effect(Message)) {
  case msg {
    DatePickerDateSelected(date) -> #(
      model.Model(
        ..model,
        date_picker_2_state: model.DatePickerState(
          ..model.date_picker_2_state,
          selected_date: date,
          open: False,
        ),
      ),
      effect.none(),
    )
    DatePickerMonthChanged(year, month) -> #(
      model.Model(
        ..model,
        date_picker_2_state: model.DatePickerState(
          ..model.date_picker_2_state,
          viewed_year: year,
          viewed_month: month,
        ),
      ),
      effect.none(),
    )
    DatePickerOpen -> #(
      model.Model(
        ..model,
        date_picker_2_state: model.DatePickerState(
          ..model.date_picker_2_state,
          open: True,
        ),
      ),
      effect.none(),
    )
    DatePickerClose -> #(
      model.Model(
        ..model,
        date_picker_2_state: model.DatePickerState(
          ..model.date_picker_2_state,
          open: False,
        ),
      ),
      effect.none(),
    )
  }
}

pub fn handle_carousel_horizontal(
  model: Model,
  msg: CarouselMessage,
) -> #(Model, Effect(Message)) {
  case msg {
    CarouselHasChanged(idx, has_prev, has_next) -> #(
      model.Model(
        ..model,
        carousel_horizontal: model.CarouselState(
          index: idx,
          has_prev: has_prev,
          has_next: has_next,
        ),
      ),
      effect.none(),
    )
    CarouselNavPrevClicked ->
      case model.carousel_horizontal.has_prev {
        False -> #(model, effect.none())
        True -> #(
          model.Model(
            ..model,
            carousel_horizontal: model.CarouselState(
              ..model.carousel_horizontal,
              index: model.carousel_horizontal.index - 1,
            ),
          ),
          effect.none(),
        )
      }
    CarouselNavNextClicked ->
      case model.carousel_horizontal.has_next {
        False -> #(model, effect.none())
        True -> #(
          model.Model(
            ..model,
            carousel_horizontal: model.CarouselState(
              ..model.carousel_horizontal,
              index: model.carousel_horizontal.index + 1,
            ),
          ),
          effect.none(),
        )
      }
  }
}

pub fn handle_carousel_vertical(
  model: Model,
  msg: CarouselMessage,
) -> #(Model, Effect(Message)) {
  case msg {
    CarouselHasChanged(idx, has_prev, has_next) -> #(
      model.Model(
        ..model,
        carousel_vertical: model.CarouselState(
          index: idx,
          has_prev: has_prev,
          has_next: has_next,
        ),
      ),
      effect.none(),
    )
    CarouselNavPrevClicked ->
      case model.carousel_vertical.has_prev {
        False -> #(model, effect.none())
        True -> #(
          model.Model(
            ..model,
            carousel_vertical: model.CarouselState(
              ..model.carousel_vertical,
              index: model.carousel_vertical.index - 1,
            ),
          ),
          effect.none(),
        )
      }
    CarouselNavNextClicked ->
      case model.carousel_vertical.has_next {
        False -> #(model, effect.none())
        True -> #(
          model.Model(
            ..model,
            carousel_vertical: model.CarouselState(
              ..model.carousel_vertical,
              index: model.carousel_vertical.index + 1,
            ),
          ),
          effect.none(),
        )
      }
  }
}
