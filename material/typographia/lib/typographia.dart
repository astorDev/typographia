import 'package:flutter/material.dart';

abstract class TextWithKnownStyle extends StatelessWidget {
  final String data;
  final Color? color;
  final Color? backgroundColor;
  final double opacity;
  final TextDecoration? decoration;
  final TextDirection? direction;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final bool? softWrap;
  
  const TextWithKnownStyle(
    this.data, {
      super.key,
      this.color,
      this.backgroundColor,
      this.decoration,
      this.direction,
      this.textAlign,
      this.overflow,
      this.softWrap,
      this.opacity = 1,
    });

  TextStyle styleFrom(TextTheme theme);

  @override
  Widget build(BuildContext context) {
    var sourceStyle = styleFrom(Theme.of(context).textTheme);

    var appliedStyle = sourceStyle.copyWith(
      // inherit
      color: color ?? sourceStyle.color!.withOpacity(opacity),
      backgroundColor: backgroundColor,
      // fontSize
      // fontWeight
      // fontStyle
      // letterSpacing
      // wordSpacing
      // textBaseline
      // height
      // leadingDistribution
      // locale
      // foreground (Paint)
      // background (Paint)
      decoration: decoration,
      // decorationColor
      // decorationStyle
      // decorationThickness
      // debugLabel
      // fontFamily
      // fontFamilyFallback
      // package
      // overflow
    );

    return Text(
      data, 
      style: appliedStyle,
      // strutStyle
      textAlign: textAlign,
      textDirection: direction,
      // locale
      softWrap: softWrap,
      overflow: overflow,
      // textScaleFactor
      // textScaler
      // maxLines
      // semanticsLabel
      // textWidthBasis
      // textHeightBehavior
      // selectionColor
    );
  }
}

class TextDisplayLarge extends TextWithKnownStyle {
  const TextDisplayLarge(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.displayLarge!;
}

class TextDisplayMedium extends TextWithKnownStyle {
  const TextDisplayMedium(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.displayMedium!;
}

class TextDisplaySmall extends TextWithKnownStyle {
  const TextDisplaySmall(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.displaySmall!;
}

class TextHeadlineLarge extends TextWithKnownStyle {
  const TextHeadlineLarge(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.headlineLarge!;
}

class TextHeadlineMedium extends TextWithKnownStyle {
  const TextHeadlineMedium(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.headlineMedium!;
}

class TextHeadlineSmall extends TextWithKnownStyle {
  const TextHeadlineSmall(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.headlineSmall!;
}

class TextTitleLarge extends TextWithKnownStyle {
  const TextTitleLarge(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.titleLarge!;
}

class TextTitleMedium extends TextWithKnownStyle {
  const TextTitleMedium(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.titleMedium!;
}

class TextTitleSmall extends TextWithKnownStyle {
  const TextTitleSmall(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.titleSmall!;
}

class TextBodyLarge extends TextWithKnownStyle {
  const TextBodyLarge(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.bodyLarge!;
}

class TextBodyMedium extends TextWithKnownStyle {
  const TextBodyMedium(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.bodyMedium!;
}

class TextBodySmall extends TextWithKnownStyle {
  const TextBodySmall(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.bodySmall!;
}

class TextLabelLarge extends TextWithKnownStyle {
  const TextLabelLarge(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.labelLarge!;
}

class TextLabelMedium extends TextWithKnownStyle {
  const TextLabelMedium(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.labelMedium!;
}

class TextLabelSmall extends TextWithKnownStyle {
  const TextLabelSmall(
    super.data, {
      super.key,
      super.color,
      super.backgroundColor,
      super.decoration,
      super.direction,
      super.textAlign,
      super.overflow,
      super.softWrap,
      super.opacity = 1,
    }
  );

  @override
  TextStyle styleFrom(TextTheme theme) => theme.labelSmall!;
}