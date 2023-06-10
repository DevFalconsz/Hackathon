spd = 5;

if place_meeting(x, y, obj_wall) {
   // O objeto personagem colidiu com o objeto parede
   var new_x, new_y;

   // Encontre uma nova posição para o personagem fora da parede
   new_x = xprevious; // Mantenha a posição x anterior do personagem
   new_y = yprevious; // Mantenha a posição y anterior do personagem

   while place_meeting(new_x, new_y, obj_wall) {
      // Continue movendo o personagem para fora da parede
      new_x += sign(x - new_x);
      new_y += sign(y - new_y);
   }

   // Defina a nova posição para o personagem
   x = new_x;
   y = new_y;
}
