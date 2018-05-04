import QtQuick 2.0
//import '../..'

Row {
    // tedious
    property alias text_a: part_a.text
    property alias color_a: part_a.color
    property alias text_op: part_op.text
    property alias text_b: part_b.text
    property alias color_b: part_b.color
    property alias text_q: part_q.text

    // need a few bumps on this - lining the sums up is weird
    // maybe they should be *meh* -

    // eventually the children should be able to write the program for mulitply.
    // THAT'S the beautiful dynamic system.
    id: row
    height: parent.height
    // flow?
    QuestionViewText {
        id: part_a
        color: color_a
    }

//    Text {
//        height: parent.height
//        text: a
//        verticalAlignment: Text.AlignVCenter
//        font.pixelSize: row.height * 0.75
//        //font.pixelSize: height
//    }
    QuestionViewText {
        id: part_op
        text: ' ' + op + ' '
    }
    QuestionViewText {
        id: part_b
        text: b
    }
    QuestionViewText {
        text: ' = '
    }
    QuestionViewText {
        id: part_q
        // move this out of here please - i hope this works (should)
        text: ''
    }
}
