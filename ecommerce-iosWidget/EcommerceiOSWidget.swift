//
//  EcommerceiOSWidget.swift
//  ecommerce-iosWidget
//
//  Created by Bliss on 17/5/21.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> Void) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> Void) {
        var entries: [SimpleEntry] = []

        entries.append(SimpleEntry(date: Date(), configuration: configuration))

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {

    let date: Date
    let configuration: ConfigurationIntent
}

struct EcommerceiOSWidgetEntryView: View {

    var entry: Provider.Entry

    @Environment(\.widgetFamily) var family

    var body: some View {
        switch family {
        case .systemSmall:
            SmallWidgetView()
        case .systemLarge:
            LargeWidgetView()
        default:
            Text(entry.date, style: .time)
        }
    }
}

@main
struct EcommerceiOSWidget: Widget {

    let kind: String = "EcommerceiOSWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            EcommerceiOSWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct Ecommerce_iosWidget_Previews: PreviewProvider {

    static var previews: some View {
        EcommerceiOSWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
