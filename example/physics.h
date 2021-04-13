#include <binocle_sprite.h>
#include <dgNewton/Newton.h>

NewtonWorld *world;
NewtonBody *background_body;
NewtonBody *ball_body;
binocle_sprite *ball_sprite;
bool dragging_ball;
kmVec2 mouse_prev_pos;

void advance_simulation(float dt);
void setup_world();
void destroy_world();
