// SPDX-FileCopyrightText: 2022 Iconica
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class AgendaEvent {
  /// The model used for a single event in the [AgendaWidget].
  /// AgendaEvent can be multiple days long.
  AgendaEvent({
    required this.start,
    required this.end,
    this.id,
    this.content,
  }) : assert(start.isBefore(end), 'start must be before end');

  /// The start  time of the event.
  final DateTime start;

  /// The end time of the event.
  final DateTime end;

  ///
  final Widget? content;

  /// The identifier of the event that is used to combine events
  /// with the same id. Leave empty or 0 if you don't want to combine events.
  final int? id;
}
