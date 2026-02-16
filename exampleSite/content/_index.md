---
title: Test site
description: Site to test Bootstrap Icons module.
date: 2023-08-02
---

## About This Test Site

This example site demonstrates the Bootstrap Icons module for Hinode, which extends the mod-fontawesome module to provide Bootstrap Icons support.

### Rendering Modes (v4.2.0+)

The module supports three rendering modes via the `params.modules.fontawesome.mode` parameter:

- **"symbols"** - Static SVG symbols/sprites (no JavaScript required, recommended)
- **"svg"** - FontAwesome SVG+JS runtime library
- **"webfonts"** - CSS-based webfont rendering (no JavaScript required)

Current mode is shown in the configuration panel above.

## Bootstrap Icons

### Basic icons
{{< icon bi bootstrap fa-4x >}}
{{< icon bi alarm fa-4x >}}
{{< icon bi heart-fill fa-4x >}}

### Using bi shortcode
{{< bi bootstrap fa-4x >}}
{{< bi alarm fa-4x >}}
{{< bi heart-fill fa-4x >}}

## FontAwesome Icons

### Using fas shortcode
{{< fas heart fa-4x >}}
{{< fas star fa-4x >}}
{{< fas circle fa-4x >}}

### Using icon shortcode
{{< icon fas heart fa-4x >}}
{{< icon fab github fa-4x >}}
{{< icon fa envelope fa-4x >}}

## Fluid Icons - Responsive Container-Based Sizing

Fluid icons scale to fill their container using CSS container queries (100cqi).

### Bootstrap Icon - Different Container Sizes

25% width:
{{< bi icon="heart-fill fa-fluid" wrapper="w-25 fa-wrapper" >}}

50% width:
{{< bi icon="heart-fill fa-fluid" wrapper="w-50 fa-wrapper" >}}

75% width:
{{< bi icon="heart-fill fa-fluid" wrapper="w-75 fa-wrapper" >}}

### FontAwesome Icon - Different Container Sizes

25% width:
{{< fas icon="star fa-fluid" wrapper="w-25 fa-wrapper" >}}

50% width:
{{< fas icon="star fa-fluid" wrapper="w-50 fa-wrapper" >}}

75% width:
{{< fas icon="star fa-fluid" wrapper="w-75 fa-wrapper" >}}

## Side-by-Side Comparison

### Standard size (fa-4x)
Bootstrap: {{< bi heart-fill fa-4x >}}
FontAwesome: {{< fas heart fa-4x >}}

### Fluid icons (in 25% width containers)

<div style="display: flex; gap: 20px; align-items: start;">
{{< bi icon="heart-fill fa-fluid" wrapper="w-25 fa-wrapper" >}}
{{< fas icon="heart fa-fluid" wrapper="w-25 fa-wrapper" >}}
</div>

### Multiple sizes side-by-side

<div style="display: flex; gap: 20px; align-items: start;">
{{< bi icon="alarm fa-fluid" wrapper="w-25 fa-wrapper" >}}
{{< bi icon="alarm fa-fluid" wrapper="w-50 fa-wrapper" >}}
{{< bi icon="alarm fa-fluid" wrapper="w-75 fa-wrapper" >}}
</div>
