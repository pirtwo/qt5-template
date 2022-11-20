#include <QApplication>
#include "window.hpp"

int main(int argc, char **argv) {
  QApplication app(argc, argv);

  window_t win;
  win.show();

  return app.exec();
}