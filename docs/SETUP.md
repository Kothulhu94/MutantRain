# Setup

- **Engine**: Use Godot 4 LTS to ensure long-term support and stability for the project lifecycle.
- **Rendering**: Select the Forward+ renderer to balance modern lighting features with stable performance for large scenes.
- **Resolution**: Target 1920x1080 as the baseline resolution to optimize UI/layout and performance for common displays.
- **Physics**: Configure physics ticks at 60 TPS to align with gameplay responsiveness while keeping simulation deterministic.
- **Anti-Aliasing**: Keep anti-aliasing off initially to preserve performance budgets; revisit once profiling confirms headroom.
