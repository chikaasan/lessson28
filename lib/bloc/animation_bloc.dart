import 'dart:async';

import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'animation_event.dart';
part 'animation_state.dart';

class AnimationBloc extends Bloc<AnimationEvent, AnimationState> {
  AnimationBloc() : super(AnimationState(
    height1: 50,
    width1: 50,
    color11: 50,
    color22: 50,
    color33: 50,
    borderRadius1: 25,
    borderRadius2: BorderRadius.circular(25)
    ));

  @override
  Stream<AnimationState> mapEventToState(
    AnimationEvent event,
  ) async* {
      if(event is ClickEvent){
        yield AnimationState(
          height1: state.height1 = Random().nextInt(256).toDouble(), 
          width1: state.width1 = Random().nextInt(256).toDouble(), 
          color11: state.color11 = Random().nextInt(256),
          color22: state.color22 = Random().nextInt(256),
          color33: state.color33 = Random().nextInt(256), 
          borderRadius1: state.borderRadius1 = Random().nextInt(100),
          borderRadius2: state.borderRadius2 = BorderRadius.circular(Random().nextInt(100).toDouble())
          );
      }
  }
}
